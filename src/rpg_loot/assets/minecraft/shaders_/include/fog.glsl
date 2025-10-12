#version 150

layout(std140) uniform Fog {
  vec4 FogColor;
  float FogEnvironmentalStart;
  float FogEnvironmentalEnd;
  float FogRenderDistanceStart;
  float FogRenderDistanceEnd;
  float FogSkyEnd;
  float FogCloudsEnd;
};

bool isCave(float environmentalEnd, vec4 fogColor) {
  return environmentalEnd > 256.0 && length(fogColor.rgb) < 0.001 && fogColor.a > 0.0;
}

float linear_fog_value(float vertexDistance, float fogStart, float fogEnd) {
  if (vertexDistance <= fogStart) {
    return 0.0;
  } else if (vertexDistance >= fogEnd) {
    return 1.0;
  }

  return (vertexDistance - fogStart) / (fogEnd - fogStart);
}

float total_fog_value(float sphericalVertexDistance, float cylindricalVertexDistance, float environmentalStart, float environmentalEnd, float renderDistanceStart, float renderDistanceEnd) {
  return max(linear_fog_value(sphericalVertexDistance, environmentalStart, environmentalEnd), linear_fog_value(cylindricalVertexDistance, renderDistanceStart, renderDistanceEnd));
}

vec4 apply_fog(vec4 inColor, float sphericalVertexDistance, float cylindricalVertexDistance, float environmentalStart, float environmentalEnd, float renderDistanceStart, float renderDistanceEnd, vec4 fogColor) {
  if (isCave(environmentalEnd, fogColor)) {
    environmentalStart = 64.0;
    environmentalEnd = 400.0;
    fogColor = vec4(0.1, 0.15, 0.2, 1.0);
  }
  float fogValue = total_fog_value(sphericalVertexDistance, cylindricalVertexDistance, environmentalStart, environmentalEnd, renderDistanceStart, renderDistanceEnd);
  return vec4(mix(inColor.rgb, fogColor.rgb, fogValue * fogColor.a), inColor.a);
}

float fog_spherical_distance(vec3 pos) {
  return length(pos);
}

float fog_cylindrical_distance(vec3 pos) {
  float distXZ = length(pos.xz);
  float distY = abs(pos.y);
  return max(distXZ, distY);
}

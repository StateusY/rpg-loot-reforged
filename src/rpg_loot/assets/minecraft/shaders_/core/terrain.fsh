#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>

uniform sampler2D Sampler0;

in vec3 vPosition;
in vec3 vNormal;
in vec2 vUV;
in vec4 vColor;
in vec4 vLight;
in float sphericalVertexDistance;
in float cylindricalVertexDistance;

out vec4 fragColor;

#moj_import <rpgloot:material/util.glsl>

void main() {
    ivec2 texSize = textureSize(Sampler0, 0);
    ivec2 texel = ivec2(vUV * texSize);
    vec4 color = texelFetch(Sampler0, texel + ivec2(0, 16), 0);
    switch (dynamicControl(color)) {
      #moj_import <rpgloot:material/fragment.glsl>
      default:
        color = texture(Sampler0, vUV) * vColor * vLight;
    }
    color *= ColorModulator;
    #ifdef ALPHA_CUTOUT
      if (color.a < ALPHA_CUTOUT) discard;
    #endif
    
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}

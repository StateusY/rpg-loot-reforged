#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler2;

out vec3 vPosition;
out vec3 vNormal;
out vec2 vUV;
out vec4 vColor;
out vec4 vLight;
out float sphericalVertexDistance;
out float cylindricalVertexDistance;

vec4 minecraft_sample_lightmap(sampler2D lightMap, ivec2 uv) {
    return texture(lightMap, clamp(uv / 256.0, vec2(0.5 / 16.0), vec2(15.5 / 16.0)));
}

void main() {
    vPosition = Position + ModelOffset;
    vNormal = Normal;
    vUV = UV0;
    vColor = Color;
    vLight = minecraft_sample_lightmap(Sampler2, UV2);
    
    sphericalVertexDistance = fog_spherical_distance(vPosition);
    cylindricalVertexDistance = fog_cylindrical_distance(vPosition);
    
    gl_Position = ProjMat * ModelViewMat * vec4(vPosition, 1.0);
}

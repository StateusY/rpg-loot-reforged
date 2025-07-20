#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

/* GLOBALS */
uniform sampler2D Sampler0;
uniform int IsIntensity;

/* VARYINGS */
in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

/* OUTPUT */
out vec4 fragColor;

void main() {
    /* COLOR */
    vec4 color = vec4(0.0);
    if (IsIntensity == 1) color = texture(Sampler0, texCoord0).rrrr; else color = texture(Sampler0, texCoord0);

    /* TINT */
    color *= vertexColor * ColorModulator;

    /* ALPHA DISCARD */
    if (color.a < 0.01) discard;

    /* OUTPUT */
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}

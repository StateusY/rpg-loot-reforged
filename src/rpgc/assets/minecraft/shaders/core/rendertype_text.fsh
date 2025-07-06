#version 150

#moj_import <fog.glsl>

/* GLOBALS */ uniform sampler2D Sampler0; uniform vec4 ColorModulator; uniform int IsIntensity;
/* FOG */ uniform float FogStart; uniform float FogEnd; uniform vec4 FogColor;

/* VARYINGS */ in float vertexDistance; in vec4 vertexColor; in vec2 texCoord0;
/* OUTPUT */ out vec4 fragColor;

void main() {
    /* COLOR */ vec4 color = vec4(0.0); if (IsIntensity == 1) color = texture(Sampler0, texCoord0).rrrr; else color = texture(Sampler0, texCoord0);

    /* TINT */ color *= vertexColor * ColorModulator;

    /* ALPHA DISCARD */ if (color.a < 0.01) discard;

    /* OUTPUT */ fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}

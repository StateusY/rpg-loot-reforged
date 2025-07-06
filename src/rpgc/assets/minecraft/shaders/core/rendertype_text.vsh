#version 150

#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

/* GLOBALS */ uniform sampler2D Sampler0; uniform sampler2D Sampler2; uniform mat4 ModelViewMat; uniform mat4 ProjMat; uniform int FogShape;

/* VARYINGS */ out float vertexDistance; out vec4 vertexColor; out vec2 texCoord0;

#moj_import <rpgc:gui_util.glsl>

void main() {
    /* VARIABLES */ vec3 pos = Position; vec2 texSize = vec2(textureSize(Sampler0, 0)); int vertex = gl_VertexID % 4;

    /* VARYINGS */ vertexDistance = fog_distance(Position, FogShape); vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0); texCoord0 = UV0;

    #moj_import <rpgc:gui.glsl>

    /* POSITION */ gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
}

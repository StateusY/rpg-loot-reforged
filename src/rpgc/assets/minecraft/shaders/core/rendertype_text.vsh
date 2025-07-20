#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <rpgc:gui_util.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

/* GLOBALS */
uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

/* VARYINGS */
out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {
    /* VARIABLES */
    vec3 pos = Position;
    vec2 texSize = vec2(textureSize(Sampler0, 0));
    int vertex = gl_VertexID % 4;
    
    #moj_import <rpgc:gui.glsl>
    
    /* POSITION */
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    /* VARYINGS */
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
}

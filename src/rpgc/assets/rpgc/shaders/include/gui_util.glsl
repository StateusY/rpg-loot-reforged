// GUI UTIL IMPORT

uniform float GameTime;

const vec2 SCREEN_CORNERS[4] = vec2[](vec2(-1.0, 1.0), vec2(-1.0, -1.0), vec2(1.0, -1.0), vec2(1.0, 1.0));
vec2 GUI_SIZE = vec2(2.0 / ProjMat[0][0], 2.0 / -ProjMat[1][1]);

// IMPORT END

int dynamicControl(vec4 color) {
  ivec4 c = ivec4(color * 255.0 + 0.5);
  return ((c.r & 0xFF) << 16) | ((c.g & 0xFF) << 8) | (c.b & 0xFF);
}

#define control(r, g, b) ((r & 0xFF) << 16) | ((g & 0xFF) << 8) | (b & 0xFF)

#ifndef ALPHA_CUTOUT
  #define ALPHA_CUTOUT 0.0001
#endif


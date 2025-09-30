ivec4 control = ivec4(floor(Color * 255.0 + 0.5));
ivec2 guiSize = ivec2(ceil(2.0 / ProjMat[0][0]), ceil(2.0 / -ProjMat[1][1]));

if (control == ivec4(0, 0, 0, 63)) pos = vec3(0.0);
else if (control.rg == ivec2(1, 254)) {
  int type = control.b;
  vertexColor.rgb = vec3(1.0);
  switch (type) {
    case 0:
      pos = vec3(0.0);
    break;
    case 1:
      pos.y += guiSize.y - 1000.0;
    break;
  }
}

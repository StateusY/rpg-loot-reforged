ivec3 control = ivec3(floor(Color.rgb * 255.0 + 0.5));
ivec2 guiSize = ivec2(ceil(2.0 / ProjMat[0][0]), ceil(2.0 / -ProjMat[1][1]));

if (control.rg == ivec2(1, 254)) {
  int type = control.b;
  vertexColor.rgb = vec3(1.0);
  if (type == 1) pos.y += guiSize.y - 1000.0;
}


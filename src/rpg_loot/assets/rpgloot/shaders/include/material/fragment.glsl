case control(254, 1, 0):
  vec3 data = texelFetch(Sampler0, texel + ivec2(16, 0), 0).rgb;
  
  float shine = (dot(normalize(vPosition), vNormal) + vLight.r * 0.4 + 0.3) * 4.0;
  shine += sin(vPosition.y * 0.5 - GameTime * 640.0) * 0.16;
  shine += data.r;
  shine = clamp(floor(shine * 3.0) / 3.0, 0.0, 1.0);
  
  /*
  mat3 TBN;
  if (abs(dot(vNormal, vec3(0.0, 1.0, 0.0))) > 0.5) TBN = mat3(cross(abs(vNormal), vec3(0.0, 0.0, -1.0)), vec3(0.0, 0.0, 1.0), -vNormal);
  else /*                                        * / TBN = mat3(cross(vNormal, vec3(0.0, 1.0, 0.0)), vec3(0.0, 1.0, 0.0), vNormal);
  
  vec2 scaledUV = vUV * texSize;
  vec3 uvw = TBN * vPosition;
  uvw /= uvw.z;
  vec2 uv = scaledUV + uvw.xy * 16.0;
  uv = floor(scaledUV / 16.0) * 16.0 + mod(uv, 16.0);
  */
  
  color = mix(vec4(-0.1, 0.0, 0.2, 0.0), vec4(0.7, 0.8, 0.9, 1.0), shine);
break;


case control(254, 1, 0):
  vec3 data = texelFetch(Sampler0, texel + ivec2(16, 0), 0).rgb;
  
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
  
  float shine = (dot(normalize(vPosition), vNormal) + vLight.r * 0.4 + 0.3) * 2.0;
  shine += sin(vPosition.y * 0.5 - GameTime * 640.0) * 0.16;
  shine += data.r;
  shine = clamp(floor(shine * 3.0) / 3.0, 0.0, 1.0);
  
  color = mix(vec4(-0.1, 0.0, 0.2, 0.0), vec4(0.7, 0.8, 0.9, 1.0), shine);
  color = vec4(0.0);
  if (color.a < 0.5) {
    vec3 pos = floor((vPosition - ModelOffset) * 16.0) / 16.0 + ModelOffset;
    vec3 dir = normalize(vPosition);
    dir.yz = rotate2(0.8) * dir.yz;
    vec2 xz = normalize(dir.xz);
    float ay = abs(dir.y);
    
    float vortex = pow(ay, 8.0) * -4.0 + 0.25;
    vortex += snoise(vec4(rotate2(GameTime * 12.0 + 8.0 * dir.y) * xz * 2.0, dir.y * 2.0, GameTime * 64.0)) * 0.5;
    vortex += snoise(vec4(rotate2(GameTime * 16.0) * xz * 1.0, dir.y * 1.0, GameTime * 32.0)) * 2.0;
    
    vec3 background = vec3(0.05, 0.1, 0.25) * max(0.0, vortex);
    
    float nebula = voronoi3d(dir * 2.0).x * voronoi3d(dir * 4.0).x * 4.0 - 1.0;
    nebula += pow(voronoi3d(dir * 4.0).x, 2.0) * 1.0;
    nebula += pow(voronoi3d(dir * 8.0).x, 2.0) * 0.5;
    nebula += pow(voronoi3d(dir * 16.0).x, 2.0) * 0.25;
    nebula += pow(voronoi3d(dir * 32.0).x, 2.0) * 0.125;
    nebula += pow(voronoi3d(dir * 64.0).x, 2.0) * 0.06;
    
    //nebula *= max(0.0, pow(ay, 4.0) * -1.1 + 1.0);
    
    background = max(background, vec3(0.24, 0.21, 0.2) * nebula);
    
    color = vec4(mix(background, color.rgb, color.a * 0.5), 1.0);
  }
break;


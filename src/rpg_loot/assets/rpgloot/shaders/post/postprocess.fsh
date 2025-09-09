#version 150

uniform sampler2D MainSampler;
uniform sampler2D MainDepthSampler;
uniform sampler2D EyeSampler;
uniform sampler2D DitherSampler;

in vec2 texCoord;

out vec4 fragColor;

void main() {
  vec3 eye = texture(EyeSampler, vec2(0.5)).rgb;
  float dither = (texelFetch(DitherSampler, ivec2(gl_FragCoord.xy) % 4, 0).r - 0.5) * 2.0;
  eye = (mix(eye, vec3(eye.r + eye.g + eye.b) / 3.0, 0.75) - 0.5) * 0.75 + 0.5;
  vec3 color = texture(MainSampler, texCoord).rgb;
  
  //color = (color - eye) * 1.75 + eye;
  //color -= (eye - 0.5) * 0.5;
  
  //color *= 4.0;
  
  color = pow(color * 2.0, vec3(0.75));
  
  fragColor = vec4(color, 1.0);
}

#version 150

uniform sampler2D MainSampler;
uniform sampler2D EyeSampler;

layout(std140) uniform EyeConfig {
    vec4 Points;
};

out vec4 fragColor;

void main() {
  vec3 eye = texture(EyeSampler, vec2(0.5)).rgb;
  vec3 color = texture(MainSampler, vec2(0.5)).rgb * 0.5;
  color += texture(MainSampler, Points.xy).rgb * 0.25;
  color += texture(MainSampler, Points.zw).rgb * 0.25;
  
  fragColor = vec4(mix(eye, color, 0.03), 1.0);
}

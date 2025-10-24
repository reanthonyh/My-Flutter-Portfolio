#include <flutter/runtime_effect.glsl>

uniform vec2 uSize;
uniform float uTime;

out vec4 fragColor;

void main() {
  vec2 uv = FlutterFragCoord().xy / uSize;
  
  // Animated gradient with flowing colors
  float wave1 = sin(uv.x * 3.0 + uTime * 0.5) * 0.5 + 0.5;
  float wave2 = cos(uv.y * 2.0 + uTime * 0.3) * 0.5 + 0.5;
  float wave3 = sin((uv.x + uv.y) * 1.5 + uTime * 0.7) * 0.5 + 0.5;
  
  vec3 color1 = vec3(0.4, 0.6, 0.85); // Blue
  vec3 color2 = vec3(0.7, 0.7, 0.7); // Gray
  vec3 color3 = vec3(0.4, 0.1, 0.4); // Purple dark
  
  vec3 finalColor = mix(mix(color1, color2, wave1), color3, wave2 * wave3);
  
  fragColor = vec4(finalColor * 0.3, 1.0); // Low opacity for background
}
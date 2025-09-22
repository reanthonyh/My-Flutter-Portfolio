#include <flutter/runtime_effect.glsl>

// uniform float uScale;
// uniform sampler2D uTexture;
// uniform vec2 uMagnitude;
// uniform vec4 uColor;

uniform vec2 uSize;
uniform sampler2D uTexture;

out vec4 fragColor;

void main() {
  vec2 uv = FlutterFragCoord().xy / uSize;
  fragColor = texture(uTexture, uv);
}
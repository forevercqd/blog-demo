precision highp float;
uniform sampler2D Texture;
uniform sampler2D Texture1;
varying vec2 TextureCoordsVarying;

uniform float Time;

void main(void){
  vec4 mask = texture2D(Texture, TextureCoordsVarying);
  vec4 mask1 = texture2D(Texture1, TextureCoordsVarying);

  float duration = 5.0;
  float maxAlpha = 0.4;

  float progress = mod(Time, duration) / duration; // 0~1
  float alpha = maxAlpha * (1.0 - progress);

  gl_FragColor = mask * alpha + mask1 * (1.0 - alpha);
}

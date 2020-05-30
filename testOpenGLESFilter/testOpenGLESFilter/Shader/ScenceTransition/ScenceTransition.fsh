precision highp float;

uniform sampler2D Texture;
uniform sampler2D Texture1;
varying vec2 TextureCoordsVarying;

uniform float Time;

const float PI = 3.1415926;
void main(){
    
    /*
    float duration = 0.6;
    float maxAmplitude = 0.3;
    
    float time = mod(Time, duration);
//    float progress = maxAmplitude * abs(sin(time * (PI / duration)));
    float progress = 1.0 * abs(sin(time * (PI / duration)));
    
    vec2 p = TextureCoordsVarying + progress;
    float m =step(0.0, p.y) * step(p.y, 1.0) * step(0.0, p.x) * step(p.x, 1.0); // (p.y > 0 && p.y < 1 && p.x > 0 && p.x < 1) 时 m = 1;
    vec4 color = mix( texture2D(Texture, TextureCoordsVarying), texture2D(Texture1, TextureCoordsVarying), m ); // T0 * (1-m) + T1 * m;
   */
    
    vec4 color = texture2D(Texture, TextureCoordsVarying);
    gl_FragColor = vec4(color);
}

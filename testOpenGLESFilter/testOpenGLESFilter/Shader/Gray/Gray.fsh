precision highp float;

varying vec2 TextureCoordsVarying;
uniform sampler2D Texture;

const highp vec3 Weight = vec3(0.299, 0.587, 0.114);
void main(){
    vec4 mask = texture2D(Texture, TextureCoordsVarying);
    float lumua = dot(mask.rgb, Weight);
    gl_FragColor = vec4(vec3(lumua), 1.0);
}

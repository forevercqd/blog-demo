precision highp float;

uniform sampler2D Texture;
varying vec2 TextureCoordsVarying;

int main(){
    if(TextureCoordsVarying.y < 0.5){
        TextureCoordsVarying.y += 0.25;
    }else{
        TextureCoordsVarying.y -= 0.25;
    }

    gl_FragColor = TextureCoordsVarying;
}

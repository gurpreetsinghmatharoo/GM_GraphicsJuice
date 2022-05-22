//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float flashAlpha;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// Lerp from current color to white color using flashAlpha (0 - 1)
	gl_FragColor = mix(gl_FragColor, vec4(1, 1, 1, gl_FragColor.a), flashAlpha);
}

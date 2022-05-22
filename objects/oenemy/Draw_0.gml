// Draw with flashing shader
shader_set(shWhiteFlash);
shader_set_uniform_f(uni, flashAlpha);
draw_self();
shader_reset();
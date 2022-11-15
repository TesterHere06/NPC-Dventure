/// @description Draw Z position
draw_sprite(sShadow,0,floor(x),floor(y));

if (invulnerable != 0) && ((invulnerable mod 8 < 2) == 0) && (flash == 0)
{
	// Skip draw
}
else
{
	if (flash != 0)
	{
		shader_set(flashShader);
		uFlash = shader_get_uniform(flashShader, "flash");
		shader_set_uniform_f(uFlash, flash);
	}
	
	draw_sprite(
		sprite_index,
		image_index,
		floor(x),
		floor(y-z)
)

if (shader_current() != -1) shader_reset();
}
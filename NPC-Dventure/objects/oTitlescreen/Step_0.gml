if (!keyPressed) {
titleVisible = min(1, titleVisible + 0.01)
}
else
{
	titleVisible = max(0, titleVisible - 0.01);
}

if (keyboard_check_pressed(vk_anykey)) keyPressed = true;
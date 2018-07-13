// Set macros
#macro SAVEFILE "Save.sav"

// Set measuments
#macro BLOCK_WIDTH 64
#macro BLOCK_HEIGHT 64

// Hold info on the possible platforms
global.grass_platforms = ds_list_create();
ds_list_add(global.grass_platforms, s_grass1x1);
ds_list_add(global.grass_platforms, s_grass3x1);
ds_list_add(global.grass_platforms, s_grass5x1);
ds_list_add(global.grass_platforms, s_grass7x1);
ds_list_add(global.grass_platforms, s_grass14x1);
#vp_core:constructors/player_setup/set_this
# vp_core:constructors/player_setup/_iter调用

function vp_core:_reset_player
$function $(set_player_func)

tag @s remove vp_inhall
tag @s remove vp_joiner
tag @s add vp_player
tag @s add vp_gamer
#vp_core:guis/structure_saving/clear_structure_block
# vp_core:guis/structure_saving/main调用

data modify storage vp_core:io field_index set value -1
function vp_core:utils/structure_saver/_model
data modify storage iframe:io player_space.structure_saver_plate set from storage vp_core:io result
function iframe:player_space/_store

execute as @e[tag=math_marker,limit=1] run function vp_core:utils/structure_saver/_clear_structure_block
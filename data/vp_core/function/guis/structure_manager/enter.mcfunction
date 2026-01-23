#vp_core:guis/structure_manager/enter

function iframe:player_space/_get
execute unless data storage iframe:io player.cache_inv run data modify storage iframe:io player.cache_inv set from entity @s Inventory
function iframe:player_space/_store
function vp_core:guis/structure_manager/items
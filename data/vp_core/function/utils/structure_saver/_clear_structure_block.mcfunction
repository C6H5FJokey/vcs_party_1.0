#vp_core:utils/structure_saver/_clear_structure_block
# 清除结构方块和元信息陶罐
# 占用temp{<temp_x,int>,<temp_y,int>,<temp_z,int>,<temp_l,int>}
# 占用[storage math:io xyz,ListDouble,3]
# 输出空气（位于field_center沿z-方向前进field_size*24+3格的位置）
# 输出空气（位于结构方块上方一格）
# 需要传入世界实体

# 获得结构方块位置
execute store result score temp_x int run data get storage vp_core:io field_center[0]
execute store result score temp_y int run data get storage vp_core:io field_center[1]
execute store result score temp_z int run data get storage vp_core:io field_center[2]
execute store result score temp_l int run data get storage vp_core:io field_size 24
scoreboard players operation temp_z int -= temp_l int
scoreboard players remove temp_z int 3
execute store result storage math:io xyz[0] double 1 run scoreboard players get temp_x int
execute store result storage math:io xyz[1] double 1 run scoreboard players get temp_y int
execute store result storage math:io xyz[2] double 1 run scoreboard players get temp_z int
data modify entity @s Pos set from storage math:io xyz

# 生成结构方块
execute at @s run setblock ~ ~ ~ minecraft:air
execute at @s run setblock ~ ~1 ~ minecraft:air

# 区块安全
tp @s 0 0 0
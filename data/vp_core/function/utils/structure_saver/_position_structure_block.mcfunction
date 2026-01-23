#vp_core:utils/structure_saver/_position_structure_block
# 定位结构方块
# 占用temp{<temp_x,int>,<temp_y,int>,<temp_z,int>,<temp_l,int>}
# 占用[storage math:io xyz,ListDouble,3]
# 输入传送实体
# 输出传送实体位置

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
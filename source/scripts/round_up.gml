///round_up(x+hspeed)
//fix for weird collision behavior when the speed is very small

if (global.allow_frac_x_coordinate)
or (!global.use_momentum_values)
or (abs(argument0)>=1) {
    return argument0
}

if (argument0>0) return ceil(argument0)
else             return floor(argument0)

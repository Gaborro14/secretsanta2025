///autotile_ext_place(auto,offx,offy,u,v,grid)
//used for the extended autotiler

var auto; auto = argument0
var offx, offy;
offx = argument1
offy = argument2
var u, v;
u = argument3
v = argument4
var grid; grid = argument5

var half_grid; half_grid = grid/2

switch (auto) {
  case "center"    : autotile(offx       , offy, half_grid, half_grid, u*grid+offx, v*grid+offy); break
  case "open"      : autotile(offx+grid  , offy, half_grid, half_grid, u*grid+offx, v*grid+offy); break
  case "vertical"  : autotile(offx+grid*2, offy, half_grid, half_grid, u*grid+offx, v*grid+offy); break
  case "horizontal": autotile(offx+grid*3, offy, half_grid, half_grid, u*grid+offx, v*grid+offy); break
  case "corner"    : autotile(offx+grid*4, offy, half_grid, half_grid, u*grid+offx, v*grid+offy); break
}

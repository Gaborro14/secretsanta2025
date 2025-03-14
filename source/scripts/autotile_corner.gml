///autotile_corner(h, v, c)
//used for the extended autotiler
//returns "open" "vertical" "horizontal" "corner" or "center"

var h, v, c;
h = argument0
v = argument1
c = argument2

if h {
  if v {
    if c {
      return "center"
    }
    return "corner"
  }
  return "horizontal"
}

if v {
  return "vertical"
}

return "open"

# This file was generated, do not modify it. # hide
using Javis
video=Video(500,500)

function ground()
    background("white")
    sethue("red")
end

function drawcircle(color)
    sethue(color)
    circle(O,100,:stroke)
end
Background(1:5, (args...) -> ground())
obj1 = Object(1:5, (args...) -> drawcircle("green") )
obj2 = Object(1:5, (args...) -> line(O,Point(-100,-100),:stroke))

render(video,pathname="vid.gif")
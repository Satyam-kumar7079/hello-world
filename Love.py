import turtle 

turtle.speed(4)
turtle.bgcolor('green2')
turtle.pensize(4)

def func():
    for i in range (200):
        turtle.right(1)
        turtle.forward(1)

turtle.color('grey', 'red')
turtle.begin_fill()

turtle.left(121)
turtle.forward(120)

func()
turtle.left(121)

func()
turtle.forward(120)
turtle.end_fill()
turtle.hideturtle()

turtle.done()

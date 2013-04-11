class Node
  createCanvas: (w, h, char = ' ') ->
    for row in [y...y+h]
      for col in [x...x+w]
        char

  drawRect: (canvas, x, y, w, h, char = ' ') ->
    for row in [y...y+h]
      for col in [x...x+w]
        canvas[y][x] = char
    return



class Rect extends Node
  constructor: (w, h, char = '#') ->
    @w = w
    @h = h
    @char = char

  width: => @w
  height: => @h

  drawShape: (canvas, x, y) =>
    @drawRect(canvas, x, y, @w, @h, @char)

class Col extends Node
  constructor: (shapes...) ->
    @shapes = shapes


class Square extends Node

class Transform extends Node

class Group extends Node
  constructor: (children...) ->
    @children = children
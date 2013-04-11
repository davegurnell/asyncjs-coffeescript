Animal = require './animal'

module.exports = class Dog extends Animal
  constructor: (name, noise = "Bark") ->
    # super(noise) # doesn't compile - cjsify uses coffee-script-redux, which isn't all the way there yet
    @name = name

  speak: ->
    alert("#{@name} says '#{@noise}'.") # error - should be @noise

  comeHere: (name = @name) =>
    if name == @name
      "Coming!"
    else
      "Nope!"

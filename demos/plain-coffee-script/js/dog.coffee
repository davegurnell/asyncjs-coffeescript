class Dog extends Animal
  constructor: (name, noise = "Bark") ->
    super(noise)
    @name = name

  speak: ->
    alert("#{@name} says '#{noise}'.") # error - should be @noise

  comeHere: (name = @name) =>
    if name == @name
      "Coming!"
    else
      "Nope!"

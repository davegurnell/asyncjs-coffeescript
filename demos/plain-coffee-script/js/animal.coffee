class Animal
  constructor: (noise) ->
    @noise = noise

  speak: ->
    alert("Animal says '#{@noise}'.")

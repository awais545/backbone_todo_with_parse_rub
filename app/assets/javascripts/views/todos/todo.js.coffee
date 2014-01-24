class BackboneWithRails.Views.Todo extends Backbone.View
  template: JST['todos/todo']

  render: ->
  	$(@el).html(@template())
  	this
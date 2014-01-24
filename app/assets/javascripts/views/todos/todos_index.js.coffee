class BackboneWithRails.Views.TodosIndex extends Backbone.View

  template: JST['todos/index']

  initialize: ->
  	console.log(JSON.stringify(@collection))
  	@collection.on('reset', @render, this)

  render: ->
  	$(@el).html(@template(todos: @collection.responseJSON))
  	this
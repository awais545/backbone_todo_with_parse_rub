class BackboneWithRails.Views.TodosIndex extends Backbone.View

  template: JST['todos/index']

  initialize: ->
  	console.log(this)
  	@collection.on('reset', @render, this)

  render: ->
  	$(@el).html(@template(todos: @collection))
  	this
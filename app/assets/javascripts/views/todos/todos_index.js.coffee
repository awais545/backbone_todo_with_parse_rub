class BackboneWithRails.Views.TodosIndex extends Backbone.View
  template: JST['todos/index']

  events:
  	'keypress #new-todo': 'createTodo'
  	# 'click .destroy':     'deleteTodo'

  initialize: ->
  	@collection.on('reset', @render, this)
  	@collection.on('add',   @render, this)

  render: ->
  	$(@el).html(@template(todos: @collection))
  	this

  createTodo: (e)->
  	if e.which is 13
  		@collection.create task: $('#new-todo').val(), completed: false

  # deleteTodo: (e)->
  # 	console.log(this)
  # 	console.log(this.model)
		# @model.destroy()
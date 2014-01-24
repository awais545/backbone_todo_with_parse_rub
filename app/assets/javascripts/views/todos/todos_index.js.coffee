class BackboneWithRails.Views.TodosIndex extends Backbone.View
  template: JST['todos/index']

  events: ->
  	'keypress #new-todo': 'createTodo'

  initialize: ->
  	@collection.on('reset', @render, this)
  	@collection.on('add',   @render, this)

  render: ->
  	$(@el).html(@template())
  	@collection.each(@appendTodo)
  	this

  appendTodo: (todo)->
  	todo_view = new BackboneWithRails.Views.Todo(model: todo)
  	$("#todo-list").append(todo_view.render().el)

  createTodo: (e)->
  	if e.which is 13
  		@collection.create task: $('#new-todo').val(), completed: false

  editTodo: ->
    this.$el.addClass('editing')
    # this.$input.focus()
    console.log(this)
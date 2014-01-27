class BackboneWithRails.Views.Todo extends Backbone.View
  template: JST['todos/todo'],
  tagName: 'li'

  events: ->
  	'click .destroy': 'deleteTodo',
  	'dblclick label': 'editTodo'

  initialize: ->
  	this.listenTo(this.model, 'change', this.render);
  	this.listenTo(this.model, 'destroy', this.remove)

  render: ->
  	$(@el).html(@template(todo: @model))
  	this

  deleteTodo: (e)->
  	e.preventDefault()
  	console.log(this.model.get('objectId'))
  	console.log(this.model)
  	this.model.destroy({ objectId: this.model.get('objectId') })
  	# m = new BackboneWithRails.Models.Todo({objectId: this.model.get('objectId')})


  editTodo: (e)->
    this.$el.addClass('editing')
    # this.$input.focus()
    console.log(this)
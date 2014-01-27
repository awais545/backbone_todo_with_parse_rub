class BackboneWithRails.Views.Todo extends Backbone.View
  template: JST['todos/todo'],
  tagName: 'li',

  events: ->
  	'click .destroy': 'deleteTodo',
  	'dblclick label': 'editTodo',
  	'keypress .edit': 'updateOnEnter'

  initialize: ->
  	this.model.set('id', this.model.get('objectId'))
  	this.listenTo(this.model, 'change', this.render)
  	this.listenTo(this.model, 'destroy', this.remove)

  render: ->
  	$(@el).html(@template(todo: @model))
  	this

  deleteTodo: (e)->
  	e.preventDefault()
  	this.model.destroy()

  # editTodo: (e)->
  #   console.log(e.currentTarget)
  #   console.log(this)
  #   this.$el.addClass('editing')

  # updateOnEnter: (e) ->
  # 	if e.which is 13
  # 		trimmedValue = this.$input.val().trim();
		# 	this.$input.val(trimmedValue);

		# 	if (trimmedValue)
		# 		this.model.save({ title: trimmedValue });
		# 	else
		# 	  this.clear();
			
		# 	this.$el.removeClass('editing');
class BackboneWithRails.Routers.Todos extends Backbone.Router
	routes:
		'': 'index'
		'todos/:id': 'show'

	initialize: ->
		@collection = new BackboneWithRails.Collections.Todos()
		console.log(@collection.fetch())

	index: ->
		index_view = new BackboneWithRails.Views.TodosIndex(collection: @collection)
		$("#test-container").html(index_view.render().el)


	show: (id) ->
		alert "show page #{id}"

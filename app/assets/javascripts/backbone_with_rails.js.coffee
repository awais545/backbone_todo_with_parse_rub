window.BackboneWithRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new BackboneWithRails.Routers.Todos()
  	Backbone.history.start()


$(document).ready ->
  BackboneWithRails.initialize()

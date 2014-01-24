class BackboneWithRails.Collections.Todos extends Backbone.Collection

  model: BackboneWithRails.Models.Todo
  url:   '/api/todos.json'
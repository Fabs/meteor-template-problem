###
 Index: Event Handlers and Helpers
###
Template.Index.events {}
###
Example:
 'click .selector': (e, tmpl) ->
###


Template.Index.helpers {
  cards:
    [{_id: 1, title: "Tweets Oficiais", type: 0},{_id: 2, title: "Tweets Usuários", type: 1},{_id: 3, title: "Todos Tweets"}]
}
###
Example:
 items: ->
   Items.find()
###

###
 Index: Lifecycle Hooks
###
Template.Index.created = ->

Template.Index.rendered = ->

Template.Index.destroyed = ->

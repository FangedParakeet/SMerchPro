window.SMerchPro =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new SMerchPro.Routers.Pages()
    Backbone.history.start()
    
$(document).ready ->
  SMerchPro.initialize()
class SMerchPro.Views.PagesAboutSite extends Backbone.View
  
  tagName: 'div'
        
  template: JST['pages/about_site']
      
  render: ->
    $(@el).html(@template())
    this
class SMerchPro.Views.PagesLinks extends Backbone.View
  
  tagName: 'div'
  
  template: JST['pages/links']
  
  events:
    'click #about': 'about'
    'click #exp': 'exp'
    'click #proj': 'proj'
    'click #skills': 'skills'
      
  render: ->
    $(@el).html(@template())
    this
    
  about: ->
    view  = new SMerchPro.Views.PagesAbout()
    if $('#learn').attr('class') == "post"
      $('.content').html(view.render().el)
      $('#build').removeClass("post").addClass("pre")
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.intro').hide()), 1800
      setTimeout ( -> $('#about').removeClass("unselected").addClass("selected")), 1800
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      if /unselected/.test($('#about').attr('class'))
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(600)
          setTimeout ( -> $('.content').html(view.render().el)), 600
          setTimeout ( -> $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")), 1200
          setTimeout ( -> $('#about').removeClass("unselected").addClass("selected")), 1200
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('#about').removeClass("unselected").addClass("selected")
          $('.content').slideToggle(600)
      else
        $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")
        $('.content').slideToggle(600)
              
  exp: ->
    view  = new SMerchPro.Views.PagesExp()
    if $('#learn').attr('class') == "post"
      $('.content').html(view.render().el)
      $('#build').removeClass("post").addClass("pre")
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.intro').hide()), 1800
      setTimeout ( -> $('#exp').removeClass("unselected").addClass("selected")), 1800
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      if /unselected/.test($('#exp').attr('class'))
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(600)
          setTimeout ( -> $('.content').html(view.render().el)), 600
          setTimeout ( -> $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")), 1200
          setTimeout ( -> $('#exp').removeClass("unselected").addClass("selected")), 1200
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('#exp').removeClass("unselected").addClass("selected")
          $('.content').slideToggle(600)
      else
        $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")
        $('.content').slideToggle(600)
        
  proj: ->
    view  = new SMerchPro.Views.PagesProj()
    if $('#learn').attr('class') == "post"
      $('.content').html(view.render().el)
      $('#build').removeClass("post").addClass("pre")
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.intro').hide()), 1800
      setTimeout ( -> $('#proj').removeClass("unselected").addClass("selected")), 1800
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      if /unselected/.test($('#proj').attr('class'))
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(600)
          setTimeout ( -> $('.content').html(view.render().el)), 600
          setTimeout ( -> $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")), 1200
          setTimeout ( -> $('#proj').removeClass("unselected").addClass("selected")), 1200
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('#proj').removeClass("unselected").addClass("selected")
          $('.content').slideToggle(600)
      else
        $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")
        $('.content').slideToggle(600)
        
  skills: ->
    view  = new SMerchPro.Views.PagesSkills()
    if $('#learn').attr('class') == "post"
      $('.content').html(view.render().el)
      $('#build').removeClass("post").addClass("pre")
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.intro').hide()), 1800
      setTimeout ( -> $('#skills').removeClass("unselected").addClass("selected")), 1800
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      if /unselected/.test($('#skills').attr('class'))
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(600)
          setTimeout ( -> $('.content').html(view.render().el)), 600
          setTimeout ( -> $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")), 1200
          setTimeout ( -> $('#skills').removeClass("unselected").addClass("selected")), 1200
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('#skills').removeClass("unselected").addClass("selected")
          $('.content').slideToggle(600)
      else
        $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")
        $('.content').slideToggle(600)
    
    
    
    
    
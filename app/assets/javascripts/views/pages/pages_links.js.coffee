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
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 300
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('.intro').hide()), 900
      setTimeout ( -> $('#about').removeClass("unselected").addClass("selected")), 900
      setTimeout ( -> $('.content').slideToggle(300)), 900
    else
      if /unselected/.test($('#about').attr('class'))
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(300)
          setTimeout ( -> $('.content').html(view.render().el)), 300
          setTimeout ( -> $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")), 600
          setTimeout ( -> $('#about').removeClass("unselected").addClass("selected")), 600
          setTimeout ( -> $('.content').slideToggle(300)), 600
        else
          $('.content').html(view.render().el)
          $('#about').removeClass("unselected").addClass("selected")
          $('.content').slideToggle(300)
      else
        $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")
        $('.content').slideToggle(300)
              
  exp: ->
    view  = new SMerchPro.Views.PagesExp()
    if $('#learn').attr('class') == "post"
      $('.content').html(view.render().el)
      $('#build').removeClass("post").addClass("pre")
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 300
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('.intro').hide()), 900
      setTimeout ( -> $('#exp').removeClass("unselected").addClass("selected")), 900
      setTimeout ( -> $('.content').slideToggle(300)), 900
    else
      if /unselected/.test($('#exp').attr('class'))
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(300)
          setTimeout ( -> $('.content').html(view.render().el)), 300
          setTimeout ( -> $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")), 600
          setTimeout ( -> $('#exp').removeClass("unselected").addClass("selected")), 600
          setTimeout ( -> $('.content').slideToggle(300)), 600
        else
          $('.content').html(view.render().el)
          $('#exp').removeClass("unselected").addClass("selected")
          $('.content').slideToggle(300)
      else
        $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")
        $('.content').slideToggle(300)
        
  proj: ->
    view  = new SMerchPro.Views.PagesProj()
    if $('#learn').attr('class') == "post"
      $('.content').html(view.render().el)
      $('#build').removeClass("post").addClass("pre")
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 300
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('.intro').hide()), 900
      setTimeout ( -> $('#proj').removeClass("unselected").addClass("selected")), 900
      setTimeout ( -> $('.content').slideToggle(300)), 900
    else
      if /unselected/.test($('#proj').attr('class'))
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(300)
          setTimeout ( -> $('.content').html(view.render().el)), 300
          setTimeout ( -> $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")), 600
          setTimeout ( -> $('#proj').removeClass("unselected").addClass("selected")), 600
          setTimeout ( -> $('.content').slideToggle(300)), 600
        else
          $('.content').html(view.render().el)
          $('#proj').removeClass("unselected").addClass("selected")
          $('.content').slideToggle(300)
      else
        $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")
        $('.content').slideToggle(300)
        
  skills: ->
    view  = new SMerchPro.Views.PagesSkills()
    if $('#learn').attr('class') == "post"
      $('.content').html(view.render().el)
      $('#build').removeClass("post").addClass("pre")
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 300
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('.intro').hide()), 900
      setTimeout ( -> $('#skills').removeClass("unselected").addClass("selected")), 900
      setTimeout ( -> $('.content').slideToggle(300)), 900
    else
      if /unselected/.test($('#skills').attr('class'))
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(300)
          setTimeout ( -> $('.content').html(view.render().el)), 300
          setTimeout ( -> $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")), 600
          setTimeout ( -> $('#skills').removeClass("unselected").addClass("selected")), 600
          setTimeout ( -> $('.content').slideToggle(300)), 600
        else
          $('.content').html(view.render().el)
          $('#skills').removeClass("unselected").addClass("selected")
          $('.content').slideToggle(300)
      else
        $(document.getElementsByClassName("selected")[0]).removeClass("selected").addClass("unselected")
        $('.content').slideToggle(300)
    
    
    
    
    
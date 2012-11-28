jQuery.easing.def = "easeOutBounce"

$ ->

 # performance issues on iPhones older than mine (i.e. not iPhone 5 ;) )
 # $('.participant-list .participant').live 'click', ->
 #   $('.participant-actions').slideUp()
 #   $('.participant-list .participant').children().removeClass('selected')

    # hack for now
  #  menubar = $(@).find('.participant-actions')
  # if menubar.is(':visible')
  #    menubar.slideUp()
  #  else
  #    menubar.slideDown()
  #    $(this).children().addClass('selected')
      

  $('.percentage-layer').each ->
    $(@).animate
      width: $(@).data 'width'
    , 1500
    return

  $(':submit').live 'click', ->
    tweetString = "";
    enteredText = $('#feedback').val()
    starsSelected = $('#rating').val()
    decisionMakrTag = "#dmkr";
    eventTag = $('#event_hashtag').html()
    userTag = $('#user_hashtag').html()

    if enteredText == "" or starsSelected == ""
      alert "You must give a rating and feedback for this person"
      return false

    $('#tweet').val("#{enteredText} #{starsSelected}star #{decisionMakrTag} #{eventTag} #{userTag}")

  $('#feedback').live 'keyup', ->
    enteredText = $(this).val()
    $('#charcount').text(enteredText.length + enteredText.replace(/[^\n]/g, '').length);

  $('.feedback-stars a').live 'click', ->
    selected = $(this)
    id = selected.attr('id')
    selected.children().attr('src', '/assets/bigstar_active.png')

    console.log selected.siblings()
    selected.siblings().each (index, elem) ->
      children = $(elem).children()
      if(index+1 < id)
        children.attr('src', '/assets/bigstar_active.png')
      else
        children.attr('src', '/assets/bigstar_inactive.png')

    $('#rating').val(id)
  

    return

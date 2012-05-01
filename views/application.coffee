update_hello_world = ->
    $.ajax '/hello',
        type: 'POST'
        data: $("#input_form").serialize()
        success: (data) ->
            $("#hello_world").html data

download = ->
    $.ajax '/download',
        type: 'POST',
        data: $("#input_form").serialize()
        success: (data) ->
            $("#code").html data

$ ->
    $("#input_form input").keyup ->
        update_hello_world()
        download()

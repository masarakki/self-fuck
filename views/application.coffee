update_hello_world = ->
    $.ajax '/hello',
        type: 'POST'
        data: $("#input_form").serialize()
        success: (data) ->
            $("#hello_world").html data
        error: (data) ->
            $("#hello_world").html data

$ ->
    $("#input_form input").keyup ->
        update_hello_world()

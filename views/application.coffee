current_time = null

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

fix_hello_world = ->
    item = $("#hello_world")
    item.width(item.parent().width() - 10)
    item.parent().height($("#input_form").parent().height())
    item.height(item.parent().height() - 10)

fix_code = ->
    item = $("#code")
    item.width(item.parent().width() - 10)
    item.parent().height(item.parent().height() * 2)
    item.height(item.parent().height() - 10)

fix_form_size = ->
    fix_hello_world()
    fix_code()

$ ->
    fix_form_size()
    $("#input_form input").keyup ->
        current_time = new Date().getTime()
        console.log current_time
        setTimeout ->
            if new Date().getTime() >= current_time + 500
                update_hello_world()
                download()
        , 500

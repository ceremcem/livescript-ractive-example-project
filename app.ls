app = new Ractive do
    el: 'container'
    template: '#app'
    data:
        name: \mahmut
        data:
            \x
            \y
            \z


get-kds-data = ->
    $.ajax do
      method: "GET"
      url: "http://localhost:5000/kds/DemeterKds/api/rfm/ScoresVersion?rawMaterialCode=19&VersionNumber=635973759505058264"
      data-type: 'json'
      success: (response) ->
        #console.log "got gms data..."
        app.set \kds, response
        console.log response



app.on 'complete', !->
    console.log "getting kds data..."
    get-kds-data!

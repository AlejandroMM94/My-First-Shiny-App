library(shiny)

shinyServer(function(input, output){ 
    data <- reactive({
        switch(input$place,
                       "Jardin Botanico" = data.frame(lat = -12.067185, lng = -77.087342), 
                       "Laguna Recreativa" = data.frame(lat = -12.067154, lng = -77.088662), 
                       "Zona internacional"= data.frame(lat = -12.068661, lng = -77.085438),
                       "Mariposario"= data.frame(lat = -12.068535, lng = -77.089783), 
                       "Felinario"= data.frame(lat = -12.067398, lng = -77.083606), 
                       "Zona Selva"= data.frame(lat = -12.071016, lng = -77.085026), 
                       "Zona Sierra"= data.frame(lat = -12.072673, lng = -77.08581),
                       "Zona Costa"= data.frame(lat = -12.069604, lng = -77.087973),
                       "Museo del Petroleo" = data.frame(lat = -12.067287, lng = -77.084271),
                       "Tunel de Machu Picchu" = data.frame(lat = -12.065691, lng = -77.088233))
    })
    output$map <- renderLeaflet({
        leaflet(data()) %>% addTiles() %>% addMarkers(lat = data()[, 1], lng = data()[, 2])
        })
})

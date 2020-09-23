library(shiny)
library(leaflet)

shinyUI(fluidPage(
    titlePanel("Main attractions of the Parque de Las Leyendas"),
    sidebarLayout(
        sidebarPanel(
            h2("Where do you want to go?"),
            selectInput(inputId = "place", label = "Choose an attraction:", choices = c("Jardin Botanico", 
                                                            "Laguna Recreativa", 
                                                            "Zona internacional", 
                                                            "Mariposario", 
                                                            "Felinario", 
                                                            "Zona Selva", 
                                                            "Zona Sierra",
                                                            "Zona Costa",
                                                            "Museo del Petroleo",
                                                            "Tunel de Machu Picchu"))
        ),
        mainPanel(
            h3("Go!"),
            leafletOutput("map")
        )
    )
))  


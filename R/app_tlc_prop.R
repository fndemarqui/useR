


library(shiny)

app_tcl_prop <- function(...){
  ui <- fluidPage(
    headerPanel("Teorema do Limite Central para Proporções"),
    fluidRow(
      column(4,
             numericInput(
               inputId = "n",
               label = "Tamanho amostral (n):",
               value = 1000,
               min = 2),
             sliderInput(
               inputId = "p",
               label = "probabilidade de sucesso (p):",
               value = 0.5,
               min = 0,
               max = 1),
             actionButton(
               inputId = "atualizar",
               label = "atualizar"),
      ),

      column(8,
             plotOutput("hist")
      ),
    )

  )

  server <- function(input, output, session) {

    tb <- reactive({
      input$atualizar
      tb <- tibble(
        prop = replicate(1e3, mean(rbinom(n = input$n,  size = 1, prob = input$p)))
      ) %>%
        mutate(
          z = (prop - input$p)/sqrt(input$p*(1-input$p)/input$n)
        )
    })

    output$hist <- renderPlot({
      ggplot(tb(), aes(x = z)) +
        geom_histogram(aes(y=..density..), bins = 30) +
        geom_histogram(aes(y=..density..)) +
        stat_function(fun=dnorm, color = "blue") +
        xlim(c(-5,5))
    })
  }

  # Para rodar o aplicativo:
  shinyApp(ui = ui, server = server)

}


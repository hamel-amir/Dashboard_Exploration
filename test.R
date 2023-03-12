library(shiny)
library(DT)
#library(shiny)
library(DT)
library(dplyr)
df <- data.frame(x = 1:10, y = letters[1:10])
shinyApp(
  ui =fluidPage(
  titlePanel("Delete rows with DT"),
  sidebarLayout(
    sidebarPanel(
      actionButton("deleteRows", "Delete Rows")
    ),
    mainPanel(
      dataTableOutput("table1")
    )
  )
),
server =function(input, output) {
  values <- reactiveValues(dfWorking = df)
  
  observeEvent(input$deleteRows,{
    print("I am here")
    
    if (!is.null(input$table1_rows_selected)) {
      
      values$dfWorking <- values$dfWorking[-as.numeric(input$table1_rows_selected),]
    }
  })
  
  output$table1 <- renderDataTable({
    values$dfWorking
  })
  
}

)



 
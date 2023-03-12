dataset_server <- function(input,output,df) {
  
  # data=reactive({
  #   infile<-input$file
  #   if(is.null(infile)) return (NULL)
  #   delim<-get.delim(infile$datapath, n = 10, comment = "#", skip = 0, delims = c("\t", "\t| +", " ", ";", ",","."), large = 10, one.byte = TRUE)
  #   #print(delim)
  #   #print("HERE !!!!!")
  #  # print(get.ext(infile$datapath))
  #   if(get.ext(infile$datapath)=="xls"){
  #     #print("I am here xls")
  #     read_xls(infile$datapath)
  #     #print(tmpData)
  # 
  #   }else{
  #     #print("I am here csv")
  #     read.csv(infile$datapath, header=input$Header, sep =delim)
  # 
  #   }
  # 
  # 
  # })
  
  
  # nbr_lignes
  output$nbrlignes <- renderInfoBox({
    
    infoBox(
      "nombre de lignes",nrow(df), icon = icon("", lib = "font-awesome"),
      color = "yellow"
    )
  })
  
  #nbr_colonnes
  output$nbrcolonnes <- renderInfoBox({
    
    infoBox(
      "nombre de colonnes",ncol(df), icon = icon("", lib = "font-awesome"),
      color = "yellow"
    )
  })
  
  output$table1<-  DT::renderDataTable({
    
    data=DT::datatable(
      df,
      
      options = list(scrollY = 650,
                     scrollX = 500,
                     
                     #deferRender = TRUE,
                     scroller = TRUE),
      # paging = TRUE,
      # pageLength = 25,
      
      #fixedColumns = TRUE), 
    )
  })
  
}
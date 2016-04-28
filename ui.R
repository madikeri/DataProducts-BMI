library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Enter your weight in Kilograms', 0) ,
      numericInput('height', 'Enter your height in Metres', 0, min = 0.2, max = 3, step = 0.01),
      submitButton('Calculate BMI')
    ), 
    mainPanel(
      

      h4('GIVEN YOUR INPUT:'), 
      p('weight:'), verbatimTextOutput("inputweight"),
      p('height:'), verbatimTextOutput("inputheight"),
      h4('YOUR BMI IS:'),
      verbatimTextOutput("estimation"),
      p('Meaning you are in category:'),strong(verbatimTextOutput("diagnostic")),
      p("Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.
        BMI = mass (kg) / (height ^2) (m)  = kg/m2"),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight - Please eat something!'),
          tags$li('BMI [18.5-24.9] : Normal weight - Great job, can you help get here!'),
          tags$li('BMI [25-29.9]   : Overweight - Watch it'),
          tags$li('BMI >=30        : Obesity - Maybe you are a body builder, in which case bmi is not accurate, otherwise you need a plan! '),
          tags$li('PS: hope you dont take the above notes seriously!')
        )
      )
      
      
    )
    
  )   
)
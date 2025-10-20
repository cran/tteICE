##
## Causal Efficacy
##

# if (!requireNamespace("shiny", quietly = TRUE)) install.packages("shiny")
# requireNamespace("shiny")
require("shiny")
# if (!requireNamespace("shinythemes", quietly = TRUE)) install.packages("shinythemes")
require("shinythemes")
# if (!requireNamespace("psych")) install.packages("psych")
require("psych")
# if (!requireNamespace("shinyWidgets")) install.packages("shinyWidgets")
require("shinyWidgets")
# if (!requireNamespace("DT", quietly = TRUE)) install.packages("DT")
require("DT")
source("tab/func2_causal.R", encoding = "utf-8")


tagList(

  includeCSS("www/style_cn_causal.css"),

##########------------------------------------------------------------------------------------------------------------------------------------------

navbarPage(
title="",
theme = shinytheme("united"), #united #simplex
collapsible = TRUE,
id = "navibar",
position = "static-top",
header=NULL,
footer=NULL,

tabPanel(
  "tteICE",
  headerPanel("tteICE: Treatment effect estimation for time-to-event outcomes with intercurrent events (ICEs)"),
  source("ui_data.R", local = TRUE, encoding = "UTF-8")$value,
  hr()
  )

)


)

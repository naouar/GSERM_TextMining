#' Title: docX Data
#' Purpose: Extract docX data
#' Author: Ted Kwartler
#' email: ehk116@gmail.com
#' License: GPL>=3
#' Date: 2019-4-13
#'

# libraries
library(docxtractr)
library(xml2)

# wd
setwd("/cloud/project/E_Friday/data")

# file
filePath <- 'exampleWord.docx'

# Easiest way to get the table data
info      <- docxtractr::read_docx(filePath)
tableData <- docx_extract_all_tbls(info)
tableData <- as.data.frame(tableData)
tableData

# Easiest way to extract the simple text as a single vector but requires clean up
library(textreadr)
info <- textreadr::read_docx(filePath)
info
# End
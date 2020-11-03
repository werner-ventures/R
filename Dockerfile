FROM werner01ai/BASE
RUN Rscript -e "install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ'), dependencies=TRUE, repos='https://cran.rstudio.com')" && 
 Rscript -e "library(devtools); library(methods); options(repos=c(CRAN='https://cran.rstudio.com')); devtools::install_github('IRkernel/IRkernel')" && 
 Rscript -e "library(IRkernel); IRkernel::installspec(name = 'ir32', displayname = 'R 3.2')" 

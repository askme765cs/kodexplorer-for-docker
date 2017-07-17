############################################################

# Dockerfile to build kodexplorer

############################################################

#Set the base image to webdevops/php-nginx
From webdevops/php-nginx

# File Author / Maintainer
MAINTAINER askme765cs

################## BEGIN INSTALLATION ######################
#install git
RUN apt-get update
RUN apt-get install git
#install kodexplorer
RUN cd /app
RUN git clone https://github.com/kalcaddle/KODExplorer.git
RUN chmod -Rf 777 ./KODExplorer/*
ENV WEB_DOCUMENT_ROOT /app/KODExplorer
##################### INSTALLATION END #####################

# Expose the default port
EXPOSE 80


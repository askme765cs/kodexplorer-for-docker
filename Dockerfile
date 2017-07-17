############################################################

# Dockerfile to build kodexplorer

############################################################

#Set the base image to webdevops/php-nginx
From webdevops/php-nginx

# File Author / Maintainer
MAINTAINER askme765cs

################## BEGIN INSTALLATION ######################
#install kodexplorer
RUN git clone https://github.com/kalcaddle/KODExplorer.git
RUN chmod -Rf 777 /KODExplorer
ENV WEB_DOCUMENT_ROOT /KODExplorer
##################### INSTALLATION END #####################

# Expose the default port
EXPOSE 80


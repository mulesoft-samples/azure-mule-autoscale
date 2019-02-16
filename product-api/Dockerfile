FROM java:openjdk-8-jdk

MAINTAINER rajan.manickavasagam@gmail.com

RUN cd ~ && wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.9.0/mule-standalone-3.9.0.tar.gz

# Get the sample Product API
RUN cd ~ && wget -O azure-product-api-39.zip https://github.com/mulesoft-samples/azure-mule-autoscale/blob/master/product-api/azure-product-api-39.zip?raw=true 

RUN cd /opt && tar xvzf ~/mule-standalone-3.9.0.tar.gz && rm ~/mule-standalone-3.9.0.tar.gz && ln -s /opt/mule-standalone-3.9.0 /opt/mule

RUN cp ~/azure-product-api-39.zip /opt/mule-standalone-3.9.0/apps/.

# Define environment variables.
ENV MULE_HOME /opt/mule

# Define mount points.
VOLUME ["/opt/mule/logs", "/opt/mule/conf", "/opt/mule/apps", "/opt/mule/domains"]

# Define working directory.
WORKDIR /opt/mule

CMD [ "/opt/mule/bin/mule" ]

# Default http port
EXPOSE 8081

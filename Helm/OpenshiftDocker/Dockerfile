FROM wso2/wso2am:4.6.0.13

ARG USER=wso2carbon
ARG USER_HOME=/home/${USER}
ARG WSO2_SERVER_NAME=wso2am
ARG WSO2_SERVER_VERSION=4.6.0
ARG WSO2_SERVER=${WSO2_SERVER_NAME}-${WSO2_SERVER_VERSION}
ARG WSO2_SERVER_HOME=${USER_HOME}/${WSO2_SERVER}
ARG MYSQL_CONNECTOR=./mysql-connector-j-8.4.0.jar

# Change directory permissions for OpenShift compatibility
USER root
RUN chgrp -R 0 ${USER_HOME} && chmod -R g=u ${USER_HOME} \
    && chgrp -R 0 ${WSO2_SERVER_HOME} && chmod -R g=u ${WSO2_SERVER_HOME} \
    && chgrp -R 0 ${USER_HOME}/solr && chmod -R g=u ${USER_HOME}/solr
USER wso2carbon

# Copy JDBC MySQL driver
COPY ${MYSQL_CONNECTOR} ${WSO2_SERVER_HOME}/repository/components/lib

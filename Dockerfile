FROM registry.wso2.com/wso2-apim/am:4.6.0.13

ARG USER=wso2carbon
ARG USER_HOME=/home/${USER}
ARG WSO2_SERVER_NAME=wso2am
ARG WSO2_SERVER_VERSION=4.6.0
ARG WSO2_SERVER=${WSO2_SERVER_NAME}-${WSO2_SERVER_VERSION}
ARG WSO2_SERVER_HOME=${USER_HOME}/${WSO2_SERVER}

ARG MYSQL_VERSION=8.0.28
ARG MYSQL_URL=https://repo1.maven.org/maven2/mysql/mysql-connector-java/${MYSQL_VERSION}/mysql-connector-java-8.0.28.jar

# Copy JDBC MySQL driver
ADD --chown=wso2carbon:wso2 ${MYSQL_URL} ${WSO2_SERVER_HOME}/repository/components/lib


FROM registry.wso2.com/wso2-apim/am:4.6.0.16

ARG USER=wso2carbon
ARG USER_HOME=/home/${USER}
ARG WSO2_SERVER_NAME=wso2am
ARG WSO2_SERVER_VERSION=4.6.0
ARG WSO2_SERVER=${WSO2_SERVER_NAME}-${WSO2_SERVER_VERSION}
ARG WSO2_SERVER_HOME=${USER_HOME}/${WSO2_SERVER}
ARG WSO2_DEPLOYMENT_FILE=./deployment.toml
ARG MYSQL_CONNECTOR=./mysql-connector-j-8.4.0.jar

#ARG MYSQL_VERSION=8.4.0
#ARG MYSQL_URL=https://repo1.maven.org/maven2/mysql/mysql-connector-java/${MYSQL_VERSION}/mysql-connector-java-${MYSQL_VERSION}.jar

# Copy JDBC MySQL driver
#COPY --chown=wso2carbon:wso2 ${MYSQL_URL} ${WSO2_SERVER_HOME}/repository/components/lib
COPY --chown=wso2carbon:wso2 ${MYSQL_CONNECTOR} ${WSO2_SERVER_HOME}/repository/components/lib

# Copy deployment.toml
#COPY --chown=wso2carbon:wso2 ${WSO2_DEPLOYMENT_FILE} ${WSO2_SERVER_HOME}/repository/conf

pipeline {
  agent {
     label 'jenkins-agent'
  }
  tools {
     jdk 'java17'
     maven 'Maven3'
  }
  stages {
     stage("Cleanup Workspace"){
          steps {
          clearWs()
          }
     }
     stage("Checkout from SCM"){
          steps {
          git branch: 'main', credentialsId: 'github', url: 'https://github.com/amiya101/registration-app.git'
          }
     }
     stage("Build Application"){
          steps {
          sh "mvn clean package"
          }
     }
     stage("Test Application"){
          steps {
          sh "mvn test"
          }
     }

  }
} 

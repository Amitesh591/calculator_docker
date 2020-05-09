pipeline {
  environment {
    registry = "https://registry.hub.docker.com/amitesh57484/calculator1"
    registryCredential = 'docker-hub-credentials'
    dockerImage = ''
    dockerImageLatest = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
         checkout scm
      }
    }
    stage('Build Executable Jar'){
        steps {
             sh 'mvn clean compile test package '
        }
    }
    
   
   
    
  }
  
}

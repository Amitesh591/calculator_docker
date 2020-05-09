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
    stage('Building image') {
      steps{
        script {
          sh 'dockerImage = docker.build registry + ":$BUILD_NUMBER"'
          sh 'dockerImageLatest = docker.build registry + ":latest"'
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
         sh 'docker.withRegistry( 'registry', 'docker-hub-credentials' ) {dockerImage.push() dockerImageLatest.push()'}
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
    
  }
  
}

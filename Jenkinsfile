pipeline {
    agent{
        label 'jenkins-dind'
    }
     
    stages {
        stage('Example Test') {
            steps {
                sh "ls -la"
            }
        }
    }
}
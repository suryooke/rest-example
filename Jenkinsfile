pipeline {
    agent { label 'maven' }
    stages {
        stage ("build and package") {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}

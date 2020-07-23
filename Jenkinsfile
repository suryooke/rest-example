pipeline {
    agent { node { label 'maven' }}
    stages {
        stage ("build and package") {
            steps {
                withSonarQubeEnv('SonarQube Server') {
                    sh 'mvn clean package'
                }
            }
        }
    }
}

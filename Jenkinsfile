pipeline {

    agent any

    stages {

        stage("Git Checkout"){
            steps {
                git branch: 'main', url: 'https://github.com/vishalchauhan91196/java-app.git'
            }
        }

        stage("Unit Testing"){
            steps {
                sh 'mvn test'
            }
        }

        stage("Integration Testing"){
            steps {
                sh 'mvn verify -DskipUnitTests'
            }
        }

        // stage("Build"){
        //     steps {
        //         sh 'mvn clean install'
        //     }
        // }

        // stage("Static Code Analysis"){
        //     steps {
        //         script {
        //             withSonarQubeEnv(credentialsId: 'sonarqube') {
        //                 sh 'mvn clean package sonar:sonar'
        //             }
        //         }
        //     }
        // }

        // stage("Quality Gate Analysis"){
        //     steps {
        //         script {
        //            waitForQualityGate abortPipeline: false, credentialsId: 'sonarqube' 
        //         }
        //     }
        // }
    }
}
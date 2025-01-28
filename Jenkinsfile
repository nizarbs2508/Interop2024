pipeline {
    agent any
    stages {
        stage('Cloner le code') {
            steps {
                git 'https://github.com/nizarbs2508/Interop2024.git'
            }
        }
        stage('Construire') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Créer l’image Docker') {
            steps {
                sh 'docker build -t nizarbsalem/Interop2024:latest .'
            }
        }
        stage('Pousser sur Docker Hub') {
            steps {
                withDockerRegistry([ credentialsId: 'docker-hub-credentials', url: '' ]) {
                    sh 'docker push nizarbsalem/Interop2024:latest'
                }
            }
        }
        stage('Déployer') {
            steps {
                sh 'docker run -d -p 8080:8080 nizarbsalem/Interop2024:latest'
            }
        }
    }
}

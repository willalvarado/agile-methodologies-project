pipeline {
    agent any
    tools {
        maven 'maven_3.9.6'
    }
    stages {
        stage('Git Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '8f991cc4-162f-4661-be31-6c2c4bf84d87', url: 'https://github.com/RobertoSosa25sr/taskmakerv2.git']])
            }
        }
        stage('Build Maven') {
            steps {
                sh 'mvn clean install package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t hilmalex/taskmaker:2.0 -f docker/tomcat/Dockerfile .'
                }
            }
        }
        stage('Publish Docker Image') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerpwd', variable: 'dockerpwd')]) {
                        sh 'docker login -u hilmalex -p dckr_pat_6qt2tM-4LhBwmdTWD_lbuwE4fzE'
                    }
                    sh 'docker push hilmalex/taskmaker:2.0'
                }
            }
        }
    }
}
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                   script { 
                    git branch: 'main',
                        credentialsId: 'bkgit',
                        url: 'https://github.com/bharathkoptit/terraform-helloworld.git'
                }
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}

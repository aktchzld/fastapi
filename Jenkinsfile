pipeline {

   agent any

   parameters {

      choice(name: 'VERSION', choices: ['1.1.0','1.2.0','1.3.0'], description: '')

      booleanParam(name: 'executeTests', defaultValue: true, description: '')

   }

   stages {

      stage("Checkout") {

         steps {

            checkout scm

         }

      }

      stage("Build") {

         steps {

            sh 'docker-compose build web'

         }

      }

      stage("Tag and Push") {

         steps {

              sh "docker tag jenkins-pipeline_web:latest kh98lee/jenkins-app:${BUILD_NUMBER}"

               sh "docker login -u kh98lee -p rjsgml6010!"

               sh "docker push kh98lee/jenkins-app:${BUILD_NUMBER}"

         }

      }

      stage("deploy") {

         steps {

            sh "docker-compose up -d"

         }

      }

   }

}

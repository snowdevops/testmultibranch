pipeline {
   agent any
   tools {
      maven 'Maven'
   }
   stages {
       stage("buildmbmaster") {
           steps {
               //snDevOpsStep()
               echo "Building" 
               sleep 1
           }
       }
       
      stage("testmbmaster") {
          stages {
            stage('UAT unit test1.0') {
              steps {
                 //snDevOpsStep()
                 echo "Testing UAT unit test1.0"
                sleep 1
                }
              }
            
            stage('UAT unit test 2') {
              steps {
                 //snDevOpsStep()
                 echo "Testing UAT unit test 2"
                sleep 1
              }
            }     
          }           
        } 
        stage("deploymbmaster") {
           stages {
               stage('dev') {
                 steps {
                    when {
                        env.BRANCH_NAME == "dev" { 
                     }
                     echo "Deploying to dev" 
                     sleep 1
                 }
               }
               stage('prod') {
                 steps {
                     when {
                        env.BRANCH_NAME == "master" { 
                     }
                     echo "Deploying to prod" 
                     sleep 1
                 }
               }
           }
        }
      }
  }

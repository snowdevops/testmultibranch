pipeline {
   agent any
   tools {
      maven 'Maven'
   }
   stages {
       stage("buildmbmaster") {
           steps {
               echo "Building" 
               sleep 5
           }
       }
       
      stage("testmbmaster") {
          stages {
            stage('UAT unit test1.0') {
              steps {
                 snDevOpsStep()
                  echo "Testing UAT unit test1.0"
                sleep 3
                }
              }
            
            stage('UAT unit test 2') {
              steps {
                 snDevOpsStep()
                  echo "Testing UAT unit test 2"
                sleep 3
              }
            }     
          }           
        } 
        stage("deploymbmaster") {
           steps {
               echo "Deploying" 
               sleep 5
           }
        }
      }
  }

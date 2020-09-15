pipeline {
   agent any
   tools {
      maven 'Maven'
   }
   stages {
       stage("buildmbmaster") {
           steps {
               snDevOpsStep()
               echo "Building" 
               sleep 1
           }
       }
       
      stage("testmbmaster") {
          stages {
            stage('UAT unit test1.0') {
              steps {
                 snDevOpsStep()
                 echo "Testing UAT unit test1.0"
                sleep 1
                }
              }
            
            stage('UAT unit test 2') {
              steps {
                 snDevOpsStep()
                 echo "Testing UAT unit test 2"
                sleep 1
              }
            }     
          }           
        } 
        stage("deploymbmaster") {
           steps {
               snDevOpsStep()
               echo "Deploying" 
               sleep 1
           }
        }
      }
  }

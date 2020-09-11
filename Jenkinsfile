pipeline {
   agent any
   tools {
      maven 'Maven'
   }
   stages {
       stage("build") {
           steps {
              snDevOpsStep()
               echo "Building" 
               sleep 5
           }
       }
       
      stage("test") {
          stages {
            stage('UAT unit test1.0') {
              when {
                branch 'dev'
              }
                  
              steps {
                  snDevOpsStep()
                  echo "Testing UAT unit test1.0"
                }
              }
            
            stage('UAT unit test 2') {
              steps {
                  snDevOpsStep()
                  echo "Testing UAT unit test 2"                   
              }
            }     
          }           
        } 
        stage("deploy") {
           steps {
              snDevOpsStep()
               echo "Deploying" 
               sleep 5
           }
        }
      }
  }

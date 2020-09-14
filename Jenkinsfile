pipeline {
   agent any
   tools {
      maven 'Maven'
   }
   stages {
       stage("buildbr1") {
           steps {
               echo "Building" 
               sleep 5
           }
       }
       
       stage("testbr1") {
          steps {
               echo "Testing" 
               sleep 5
           }           
        } 
        stage("deploybr1") {
           steps {
               echo "Deploying" 
               sleep 5
           }
        }
      }
  }

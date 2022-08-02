pipeline {
  agent any 
  parameters {
    sting(name:'U-NAME', defaultValue:'', description:'Enter Your Docker User-name')
    password(name:'PWD', defaultValue:'', description:'Enter Your Password')
  }
  Environment {
    DOC-IMAGE = "<DOCKER AJB_UserName>/httpd:latest"
  }
  stages {
      stage('git clone') {
        steps {
	  git branch:'master', credentialId:'git', url:'<git-url>'
	}
      }
      stage('Docker Image Build') {
        steps {
	  sh"docker build -t ${env.DOC-IMAGE} ."
	}
      }
      stage('image push to dockerhub') {
        steps {
	  sh"docker push <hub user name> <image name>:<tag>"
	}
      }
    }
  }
  

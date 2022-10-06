node {
	
  	stage('cloning git'){
        git 'https://github.com/paradkar012/simple-angular6-app.git'
    }
    stage("Build") {
        bat 'npm run ng --build'
    }
    stage('Docker Build') {
      	bat 'docker build -t paradkar012/simple-angular6-app:latest .'
      }
    }
  

pipeline {
	agent { label 'master' }
	stages {
		stage('Run Junit'){
			steps{
				sh "mvn clean test"
			}
		}
		
	}

}
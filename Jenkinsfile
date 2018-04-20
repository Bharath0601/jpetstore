pipeline {
	agent { label 'master' }
	stages {
		stage('Run Junit'){
			steps{
				sh "mvn clean test"
			}
		}
		
		//stage('Sonar Analysis'){
		//	sh "org.sonarsource.scanner.maven:sonar-maven-plugin:3.3.0.603:sonar -Dsonar.host.url=http://52.187.188.41:9000/ -Dsonar.login=admin -Dsonar.password=admin"
		
		//}
		stage('SonarQube analysis') {
			steps{
				// requires SonarQube Scanner 2.8+
				//def scannerHome = tool 'SonarQube Scanner 2.8';
				withSonarQubeEnv('sonar') {
					sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.3.0.603:sonar'
				}
			}
		}
		
		//stage('Build App'){
		//	steps{
		//		sh "mvn clean install"
		//	}
		//}
	}

}
pipeline{
    agent {
  label 'slave1'
}

    tools {
  maven 'maven'
}

options{
    timestamps()
    buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5'))
}
triggers{
    pollSCM('12 * * * * ')
}
stages
{
    stage('checkout'){
        steps{
            git credentialsId: 'git-cred', url: 'https://github.com/mst-war-projects/maven-web-application-1.git'
        }
    }
    stage('build'){
        steps{
            sh 'mvn clean install'

        }
    }
    stage('Deploy to tomcat'){
        steps{
        
          sh 'scp /opt/jenkinsjobdata/workspace/declaratives/target/maven-web-application.war /opt/apache-tomcat-9.0.73/webapps/'

        }
        
    }
    
    
}

post{
    always{
        emailext body: '''Build complete

Thanks
Mohan
79992555''', subject: 'Build is over !!!!!!', to: 'mohan200810@gmail.com'
    }
}



}

node('master') {
    stage('Clean and Build') {
        //checkout
        checkout scm

        // build
        sh 'mvn -Pjenkins clean install '
        step([$class: 'CheckStylePublisher', pattern: 'target/checkstyle-result.xml'])
    }
}

node('master') {
    stage('build docker') {
        sh 'mvn -Pjenkins docker:docker -DpushImage=true'
    }
}

node('master') {

    stage('deploy docker') {
        sh 'docker-compose up '
    }
}

node('master') {

    stage('run tests') {
        sh 'acceptance/'
        sh 'mvn clean test '
    }

}
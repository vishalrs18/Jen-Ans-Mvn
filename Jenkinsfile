node ('maven') {
    stage('Git checkout') { // for display purposes
        git branch: 'main', credentialsId: 'f2a21285-619c-43bf-9652-5fa30c27c559', url: 'https://github.com/vishalrs18/Jen-Ans-Mvn.git'
    }
    stage('Build') {
       sh 'mvn clean install'
        }
    stage ('docker')
        withDockerRegistry(credentialsId: 'docker', url: 'https://hub.docker.com/repository/docker/vishal18doc/sample')
    {
        sh 'docker build -t app:1 .'
        sh "docker tag app:1 vishal18doc/sample"
        sh "docker login -u vishal18doc -p $docker"
        sh "docker push vishal18doc/sample"
    }
    stage('ansible') {
       sh 'ansible-playbook deployfile.yaml'
    }
}

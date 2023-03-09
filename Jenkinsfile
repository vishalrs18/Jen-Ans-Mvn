node ('maven') {
    stage('Git checkout') { // for display purposes
        git branch: 'main', credentialsId: 'f2a21285-619c-43bf-9652-5fa30c27c559', url: 'https://github.com/vishalrs18/Jen-Ans-Mvn.git'
    }
    stage('Build') {
       sh 'mvn clean install'
        }
    stage ('docker') {
       withCredentials([usernamePassword(credentialsId: 'doc-jen2', passwordVariable: 'psd', usernameVariable: 'user')]) 
    {
        sh 'docker build -t app:1 .'
        sh "docker tag app:1 vishal18doc/sample"
        sh "echo $psd | docker login -u $user --password-stdin"
        sh "docker push vishal18doc/sample"
    }
    stage('ansible') {
       sh 'ansible-playbook deployfile.yaml'
    }
}

pipeline{
    agent{
      node{
          label 'maven'
      }
    } 
    stages {
        stage("Deploy Kubernetes") {
        steps {
            script {
                    withCredentials([sshUserPrivateKey(
                    credentialsId: "ssh_remote_user", 
                    keyFileVariable: 'sshKey',
                    usernameVariable: 'sshUser'
                )]) {
                    def remote = [:];
                    remote.name = '192.168.1.75';
                    remote.host = '192.168.1.75';
                    remote.user = sshUser; 
                    remote.identityFile = sshKey;
                    remote.allowAnyHosts = true;
    
                    sshCommand remote: remote, command: "ls -lrt"
                    sshScript remote: remote, script: "Deploy.sh"
                    sshPut remote: remote, from: 'namespace.yaml', into: '.'
                    } 
                }
            }
        }
    }
}

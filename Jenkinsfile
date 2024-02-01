pipeline{
    agent{
      node{
          label 'maven'
      }
    } 
    stages {
        node {
  def remote = [:]
  remote.name = '192.168.1.70'
  remote.host = '192.168.1.70'
  remote.user = 'remote_user'
  remote.password = '12345678'
  remote.allowAnyHosts = true
                    stage('Remote SSH') {
                        sshPut remote: remote, from: 'namespace.yaml', into: '.'
                        sshPut remote: remote, from: 'secret.yaml', into: '.'
                        sshPut remote: remote, from: 'deployment.yaml', into: '.'
                        sshPut remote: remote, from: 'service.yaml', into: '.'
                        sshScript remote: remote, script: "Deploy.sh"
                        }
                  }
          }   
}
                   

            

node {
    stage "Prepare environment"
        checkout scm
        def environment  = docker.build 'countdown-node'

        environment.inside {
            stage "Checkout and build deps"
                sh "npm install"
        }

    stage "Cleanup"
        deleteDir()
}
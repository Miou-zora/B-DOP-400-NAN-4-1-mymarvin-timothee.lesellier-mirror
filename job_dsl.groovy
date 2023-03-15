freeStyleJob('/Tools/clone-repository') {
    parameters {
        stringParam('GIT_REPOSITORY_URL', '', 'Git URL of the repository to clone')
    }

    wrappers {
        preBuildCleanup {
            preBuildCleanup()
        }
    }

    steps {
        shell('git clone ${GIT_REPOSITORY_URL}')
    }
}
cask 'youtrack-workflow' do
  version '3384fix'
  sha256 '331bd2745696507da7ee3a6a193587fc53739face966c12736c16235211cda14'

  url "https://download.jetbrains.com/charisma/youtrack-workflow-editor-#{version}-macos.zip"
  appcast 'https://data.services.jetbrains.com/products/releases?code=YTWE&latest=true&type=release',
          checkpoint: '595ed7ce2488d2700a26c9709c4b9c1b9e5795c8afbd0a3d3c597999d06a30df'
  name 'JetBrains Youtrack Workflow Editor'
  homepage 'https://www.jetbrains.com/youtrack/download/get_youtrack.html#materials=workflow-editor'

  app 'youtrack-workflow.app'

  caveats do
    depends_on_java
  end
end

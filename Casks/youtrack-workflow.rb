cask 'youtrack-workflow' do
  version '3384fix'
  sha256 '331bd2745696507da7ee3a6a193587fc53739face966c12736c16235211cda14'

  url "https://download-cf.jetbrains.com/charisma/youtrack-workflow-editor-#{version}-macos.zip"
  appcast 'https://data.services.jetbrains.com/products/releases?code=YTWE&latest=true&type=release',
          checkpoint: '2db4960d99f2b90571518bdeca5ad360d3c6df46573661a344daed7f61622547'
  name 'JetBrains Youtrack Workflow Editor'
  homepage 'https://www.jetbrains.com/youtrack/download/get_youtrack.html#materials=workflow-editor'

  app 'youtrack-workflow.app'

  caveats do
    depends_on_java
  end
end

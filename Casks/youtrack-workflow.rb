cask :v1 => 'youtrack-workflow' do
  version '6.0'
  sha256 '331bd2745696507da7ee3a6a193587fc53739face966c12736c16235211cda14'

  url 'http://download-cf.jetbrains.com/charisma/youtrack-workflow-editor-3384fix-macos.zip'
  name 'YouTrack Workflow Editor'
  homepage 'https://www.jetbrains.com/youtrack/download/get_youtrack.html#workflow'
  license :gratis

  app 'youtrack-workflow.app'
end

cask :v1 => 'youtrack-workflow' do
  version '5.2.1'
  sha256 'a0ecd6b54d8cb2726086aa4db2744446e75a42f02e99e975fee237200b244e91'

  url 'http://download-cf.jetbrains.com/charisma/youtrack-workflow-editor-8452-macos.zip'
  homepage 'http://www.jetbrains.com/youtrack/download/get_youtrack.html'
  license :unknown

  app 'youtrack-workflow.app'
end

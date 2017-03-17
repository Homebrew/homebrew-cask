cask 'youtrack-workflow' do
  version '3385'
  sha256 '113749a54abd6c537bf1838a91cf35a70b2fdf04cfc4880eb906448b3156053e'

  url "https://download.jetbrains.com/charisma/youtrack-workflow-editor-#{version}-macos.zip"
  appcast 'https://data.services.jetbrains.com/products/releases?code=YTWE&latest=true&type=release',
          checkpoint: 'df24f300b6c16a313b60874679a1b78546a854cd1fef8250de7968c6f6fefe1c'
  name 'JetBrains Youtrack Workflow Editor'
  homepage 'https://www.jetbrains.com/youtrack/download/get_youtrack.html#materials=workflow-editor'

  app 'youtrack-workflow.app'

  caveats do
    depends_on_java
  end
end

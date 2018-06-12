cask 'webuildsg' do
  version '1.1.0'
  sha256 '7fbc9f1cb1dcbb7093f861f28e1716d882be0a38ccc7feb9c6a95fc372bf2cd9'

  url "https://github.com/webuildsg/osx/releases/download/v#{version}/WeBuildSG.app.zip"
  appcast 'https://github.com/webuildsg/osx/releases.atom'
  name 'We Build SG'
  homepage 'https://github.com/webuildsg/osx'

  app 'WeBuildSG.app'
end

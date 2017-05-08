cask 'webuildsg' do
  version '1.1.0'
  sha256 '7fbc9f1cb1dcbb7093f861f28e1716d882be0a38ccc7feb9c6a95fc372bf2cd9'

  url "https://github.com/webuildsg/osx/releases/download/v#{version}/WeBuildSG.app.zip"
  appcast 'https://github.com/webuildsg/osx/releases.atom',
          checkpoint: '511f6539871fe7ba4780b6e4f57e33931d51a2934805a0cd8e0345e951fe1f94'
  name 'We Build SG'
  homepage 'https://github.com/webuildsg/osx'

  app 'WeBuildSG.app'
end

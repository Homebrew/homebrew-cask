cask 'webuildsg' do
  version '1.1.0'
  sha256 '7fbc9f1cb1dcbb7093f861f28e1716d882be0a38ccc7feb9c6a95fc372bf2cd9'

  url "https://github.com/webuildsg/osx/releases/download/v#{version}/WeBuildSG.app.zip"
  appcast 'https://github.com/webuildsg/osx/releases.atom',
          checkpoint: '2969bb4658886e4e8c52ae8b12560f0b714f2ec7dbc7d0cc4cfcbf9511ab35e2'
  name 'We Build SG'
  homepage 'https://github.com/webuildsg/osx'
  license :mit

  app 'WeBuildSG.app'
end

cask 'youll-never-take-me-alive' do
  version '1.0.2'
  sha256 '6d89162762e4e952bec046943c094f37c06b89795d477fff46006362bc6c282a'

  url "https://github.com/iSECPartners/yontma-mac/releases/download/#{version}/yontma-#{version}.dmg"
  appcast 'https://github.com/iSECPartners/yontma-mac/releases.atom',
          checkpoint: '339c361859a83591df7bed56a83dc116b31da72a4014765de11b76face54ce69'
  name 'You\'ll Never Take Me Alive!'
  name 'YoNTMA'
  homepage 'https://github.com/iSECPartners/yontma-mac'

  app 'You\'ll Never Take Me Alive!.app'
end

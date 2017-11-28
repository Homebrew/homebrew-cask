cask 'versionsmanager' do
  version '1.1.5'
  sha256 '79f99d88579d03598393cd624109d1d2e5a47b35b78bb9d4f1b75d55d9835e7e'

  url 'https://www.corecode.io/downloads/versionsmanager_1.1.5.zip'
  appcast 'https://www.corecode.io/versionsmanager/versionsmanager.xml',
          checkpoint: 'ddf0a48915e5c98ac3799e54b70a2c15f14301e27af81d1d2e9da560a517fa69'
  name 'VersionsManager'
  homepage 'https://www.corecode.io/versionsmanager/'

  app 'VersionsManager.app'

  zap trash: '~/Library/Containers/com.corecode.VersionsManager'
end

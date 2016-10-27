cask 'veertu-desktop' do
  version '1.2.87'
  sha256 'e5edb743e6ba9f84b98475e140b978679a6fd6b9c2cdb63c29e736780670a6c7'

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop-#{version}.dmg"
  name 'Veertu'
  homepage 'https://veertu.com'

  app 'Veertu Desktop.app'

  zap delete: [
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
              ]
end

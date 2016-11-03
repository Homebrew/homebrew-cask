cask 'veertu-desktop' do
  version :latest
  sha256 :no_check

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop.dmg'
  name 'Veertu'
  homepage 'https://veertu.com'

  app 'Veertu Desktop.app'

  zap delete: [
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
              ]
end

cask 'veertu-desktop' do
  version '1.2.90'
  sha256 '409846ac25fd08c5971649957f2423c4e7ff1de0c65324c080b789dafd6407da'

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

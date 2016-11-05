cask 'veertu-desktop' do
  version '1.2.90'
  sha256 '409846ac25fd08c5971649957f2423c4e7ff1de0c65324c080b789dafd6407da'

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop-#{version}.dmg"
  appcast 'https://d2sje6b9huarvp.cloudfront.net/vdoaupd.rss',
          checkpoint: '8ce9415e486d8865505f252e0814258811295562eea5e036bad07e8792812d56'
  name 'Veertu'
  homepage 'https://veertu.com'

  app 'Veertu Desktop.app'

  zap delete: [
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
              ]
end

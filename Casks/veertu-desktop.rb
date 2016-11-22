cask 'veertu-desktop' do
  version '1.2.94'
  sha256 '1467d0336447041e7522f78fa3ed89e72fe5c252f0967c9b49f2e9ee1628446d'

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop-#{version}.dmg"
  appcast 'https://d2sje6b9huarvp.cloudfront.net/vdoaupd.rss',
          checkpoint: 'a4fb9c95332de0bc9ee25a8e83a88508f55bd6656bd314e1429065846d834f5e'
  name 'Veertu'
  homepage 'https://veertu.com/'

  app 'Veertu Desktop.app'

  zap delete: [
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
              ]
end

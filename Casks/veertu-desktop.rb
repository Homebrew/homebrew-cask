cask 'veertu-desktop' do
  version '1.2.96'
  sha256 '3f1cd0a0bd94c5096ad2be817b925bd5ceaa269f9c15d0ab5230262d280b1b07'

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop-#{version}.dmg"
  appcast 'https://d2sje6b9huarvp.cloudfront.net/vdoaupd.rss',
          checkpoint: '2b10ff8c4c6b8eb6fc0614bddf3ad5984505edf01bed6415202432d353580c1d'
  name 'Veertu'
  homepage 'https://veertu.com/'

  app 'Veertu Desktop.app'

  zap delete: [
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
              ]
end

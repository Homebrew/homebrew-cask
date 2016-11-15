cask 'veertu-desktop' do
  version '1.2.92'
  sha256 '4c6cd46bc02472c3ef9a26fd2f9808191c0703057a60a7f7002681f471463bd0'

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop-#{version}.dmg"
  appcast 'https://d2sje6b9huarvp.cloudfront.net/vdoaupd.rss',
          checkpoint: '75b13e0b0ab27a47b873057177b2afd0c6ca7e20466c09e64a60b13febfa3907'
  name 'Veertu'
  homepage 'https://veertu.com/'

  app 'Veertu Desktop.app'

  zap delete: [
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
              ]
end

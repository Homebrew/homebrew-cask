cask 'veertu-desktop' do
  version '1.2.93'
  sha256 '5904e5e82d147fd9b8c37ad14f508883ff62a817a168607f9d6b5ded14629834'

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop-#{version}.dmg"
  appcast 'https://d2sje6b9huarvp.cloudfront.net/vdoaupd.rss',
          checkpoint: '9532f4546c91a58d10ec7802d712ba70e855005ba5102f593ec1889c3ddc82a5'
  name 'Veertu'
  homepage 'https://veertu.com/'

  app 'Veertu Desktop.app'

  zap delete: [
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
              ]
end

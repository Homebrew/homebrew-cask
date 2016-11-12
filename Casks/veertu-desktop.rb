cask 'veertu-desktop' do
  version '1.2.91'
  sha256 'd0f62ea351a86143d37812438cad14cd7e956114a536151a7492fc3eac328d53'

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop-#{version}.dmg"
  appcast 'https://d2sje6b9huarvp.cloudfront.net/vdoaupd.rss',
          checkpoint: '3f92a5415d40b8703b53a11cd74c4c5f041eb31244976f34f5c259b19a44369e'
  name 'Veertu'
  homepage 'https://veertu.com'

  app 'Veertu Desktop.app'

  zap delete: [
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
              ]
end

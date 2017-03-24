cask 'ukelele' do
  version '3.2.3'
  sha256 'aba60cf88c613f820629b7f66945ba141a9f028b2bb1cc29a57aa507bd926c54'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  name 'Ukelele'
  homepage 'http://scripts.sil.org/ukelele'

  app 'Ukelele.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl',
                '~/Library/Preferences/org.sil.ukelele.plist',
                '~/Library/Preferences/Ukelele',
                '~/Library/Caches/org.sil.Ukelele',
              ]
end

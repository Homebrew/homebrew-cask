cask 'ukelele' do
  version '3.2'
  sha256 'a14298f085955907f0afea1db28c2c0c3387241028a0a6be6845d0252f1ba3f4'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://dl.dropboxusercontent.com/u/60565698/Ukelele/Ukelele_appcast.xml',
          checkpoint: 'c653a164fff1486f0610f367fd0d9c3ade70580c0bc557131e2abfc7338659a6'
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

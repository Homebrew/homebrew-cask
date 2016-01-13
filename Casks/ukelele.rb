cask 'ukelele' do
  version '3.0.1'
  sha256 'a557072570f1d51cd5ffd4c74c096f3f462c6f24bb1c3f5021fce4bd1bb1b95d'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://dl.dropboxusercontent.com/u/60565698/Ukelele/Ukelele_appcast.xml',
          :checkpoint => '3fdb79513a21aebd3bc0deb49a7b2869ed5a4513dcb5933ed1d51de75f4ab53d'
  name 'Ukelele'
  homepage 'https://scripts.sil.org/ukelele'
  license :gratis

  app 'Ukelele.app'

  zap :delete => [
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl',
                   '~/Library/Preferences/org.sil.ukelele.plist',
                   '~/Library/Preferences/Ukelele',
                   '~/Library/Caches/org.sil.Ukelele',
                 ]
end

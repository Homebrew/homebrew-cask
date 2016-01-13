cask 'ukelele' do
  version '3.0.1'
  sha256 'a557072570f1d51cd5ffd4c74c096f3f462c6f24bb1c3f5021fce4bd1bb1b95d'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://dl.dropboxusercontent.com/u/60565698/Ukelele/Ukelele_appcast.xml',
          :checkpoint => 'a9b9e2f2d0ea1348d7a660a6d51578ab1c322aeff33aa30b4960f6bd60e66c8e'
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

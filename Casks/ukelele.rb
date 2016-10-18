cask 'ukelele' do
  version '3.1.1'
  sha256 '8d222a17dfa9db52eefb03c7982a772a82933e6cd3b0f49a162b8fa2624b7f77'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://dl.dropboxusercontent.com/u/60565698/Ukelele/Ukelele_appcast.xml',
          checkpoint: '15db67019d1f9d2995cbdc5735c10cb71f3344c22acd897356a21ab09313bd70'
  name 'Ukelele'
  homepage 'https://scripts.sil.org/ukelele'

  app 'Ukelele.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl',
                '~/Library/Preferences/org.sil.ukelele.plist',
                '~/Library/Preferences/Ukelele',
                '~/Library/Caches/org.sil.Ukelele',
              ]
end

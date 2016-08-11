cask 'ukelele' do
  version '3.0.5'
  sha256 'c44148785ba2b3241e1cf036f04f2e2240acd841ee75243aef74913802fd9c31'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://dl.dropboxusercontent.com/u/60565698/Ukelele/Ukelele_appcast.xml',
          checkpoint: 'c3d1e33c9f14f850abbcfcba7f0ce13d5ecede09d62c78f9406c43d7294a624a'
  name 'Ukelele'
  homepage 'https://scripts.sil.org/ukelele'
  license :gratis

  app 'Ukelele.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl',
                '~/Library/Preferences/org.sil.ukelele.plist',
                '~/Library/Preferences/Ukelele',
                '~/Library/Caches/org.sil.Ukelele',
              ]
end

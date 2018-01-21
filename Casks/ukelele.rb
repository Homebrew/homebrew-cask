cask 'ukelele' do
  version '3.2.7'
  sha256 '5fd6a3123e1e1967098fffa216a6becf34dbc3df4bdfc9767bd889f28dd7443d'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  name 'Ukelele'
  homepage 'http://scripts.sil.org/ukelele'

  app 'Ukelele.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl*',
               '~/Library/Preferences/org.sil.ukelele.plist',
               '~/Library/Preferences/Ukelele',
               '~/Library/Caches/org.sil.Ukelele',
             ]
end

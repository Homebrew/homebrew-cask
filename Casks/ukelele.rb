cask 'ukelele' do
  version '3.2.1'
  sha256 'e56d8950fe422cedfc017d69c39e25762ffbde170cf1aa8092c22f910c3a440a'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://dl.dropboxusercontent.com/u/60565698/Ukelele/Ukelele_appcast.xml',
          checkpoint: '7843b4d5e4426629571910dfbe056dee2f67d92e3f9d3373b29ac2101429f643'
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

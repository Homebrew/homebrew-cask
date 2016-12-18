cask 'ukelele' do
  version '3.2b2'
  sha256 '7510dcd1c7ae90fbbf50e517ee9b2f0d010ffc0e89a2ab4e50fdcd116b1bac6f'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://dl.dropboxusercontent.com/u/60565698/Ukelele/Ukelele_appcast.xml',
          checkpoint: 'd0099d227e32c39465dfaa3512e77fcf0f4732d7482b8f4177cad2cf1b5e44f0'
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

cask :v1 => 'ukelele' do
  version '3.0.0'
  sha256 'a14702662220f50020aaefb9a2bfcfc7b3f12f3a86cbc358cf1dd404a6d5bfdb'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://scripts.sil.org/cms/scripts/render_download.php?site_id=nrsi&format=file&media_id=ukelele_su_feed&filename=ukelele_su_feed.xml',
          :sha256 => '6017446ed3af648203334ac7ab254ecfa4f59b9d4e2f264a93a5f993a5906028'
  name 'Ukelele'
  homepage 'https://scripts.sil.org/ukelele'
  license :gratis

  app 'Ukelele.app'

  zap :delete => [
                  '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl',
                  '~/Library/Preferences/org.sil.ukelele.plist',
                  '~/Library/Preferences/Ukelele',
                  '~/Library/Caches/org.sil.Ukelele'
                 ]
end

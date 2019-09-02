cask 'ukelele' do
  version '3.3'
  sha256 '5991dc6dedd991134cf813fd84fa6d8586e5d387cef119d49dd7ab63011635e6'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://www.dropbox.com/s/vi51g5jig3etaum/Ukelele_appcast.xml?dl=1'
  name 'Ukelele'
  homepage 'https://scripts.sil.org/ukelele'

  app 'Ukelele.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl*',
               '~/Library/Preferences/org.sil.ukelele.plist',
               '~/Library/Preferences/Ukelele',
               '~/Library/Caches/org.sil.Ukelele',
             ]
end

cask 'ukelele' do
  version '3.4.0'
  sha256 'c5611dde072ef9472b117ec1c006cb4e85e521d8ebbc63dcdb631cfe0b960a31'

  url "https://software.sil.org/downloads/r/ukelele/Ukelele_#{version}.dmg"
  appcast 'https://software.sil.org/downloads/r/ukelele/Ukelele_appcast.xml'
  name 'Ukelele'
  homepage 'https://software.sil.org/ukelele/'

  app 'Ukelele.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sil.ukelele.sfl*',
               '~/Library/Preferences/org.sil.ukelele.plist',
               '~/Library/Preferences/Ukelele',
               '~/Library/Caches/org.sil.Ukelele',
             ]
end

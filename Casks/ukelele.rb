cask 'ukelele' do
  version '3.4.1'
  sha256 '581e9b9fe572448bfd9ef588d77f1d23a03ddc8f29baef25b924f823328be38e'

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

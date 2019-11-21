cask 'ukelele' do
  version '3.4.0'
  sha256 '38b42254b780bbba3e4d3e2fac2a6bb0df8e273b1a1a29e6508b36e2178a019b'

  url "https://software.sil.org/downloads/r/ukelele/Ukelele_#{version}.dmg"
  appcast 'https://www.dropbox.com/s/vi51g5jig3etaum/Ukelele_appcast.xml?dl=1'
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

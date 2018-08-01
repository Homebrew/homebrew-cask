cask 'xit' do
  version '1.0b10'
  sha256 'a832a2fe1d03443704b3b335c25d9e77df57a8fc8756846d2e6ab93b99a9b99d'

  url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit.zip"
  appcast 'https://github.com/Uncommon/Xit/releases.atom'
  name 'Xit'
  homepage 'https://github.com/Uncommon/Xit'

  app 'Xit.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uncommonplace.xit.sfl*',
               '~/Library/Caches/com.uncommonplace.Xit',
               '~/Library/Preferences/com.uncommonplace.Xit.plist',
               '~/Library/Saved Application State/com.uncommonplace.Xit.savedState',
             ]
end

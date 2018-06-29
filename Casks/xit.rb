cask 'xit' do
  version '1.0b9'
  sha256 'ae0ebb6b0e7bf77ecff22ea77530b496bdaf4c722297c8fe3bbc56ef64d8d659'

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

cask 'xit' do
  version '1.0b12'
  sha256 'ceefc58abaf35757b95a3e89e918afdd313bd727ea1f34e473b3d0ceb7398188'

  url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit.#{version}.zip"
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

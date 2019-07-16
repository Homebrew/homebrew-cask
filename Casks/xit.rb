cask 'xit' do
  version '1.0b13'
  sha256 '0bab547a6540128b507e8e44794cc8f556407dedd80fb2bab2a439ba76a78d2e'

  url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit.#{version}.zip"
  appcast 'https://github.com/Uncommon/Xit/releases.atom'
  name 'Xit'
  homepage 'https://github.com/Uncommon/Xit'

  depends_on macos: '>= :mojave'

  app 'Xit.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uncommonplace.xit.sfl*',
               '~/Library/Caches/com.uncommonplace.Xit',
               '~/Library/Preferences/com.uncommonplace.Xit.plist',
               '~/Library/Saved Application State/com.uncommonplace.Xit.savedState',
             ]
end

cask 'texstudio' do
  version '2.12.8'
  sha256 'e5826d49bc2b37092b62455a1520ca211dcf4a1deb6ec33736b266e9b62e64c2'

  # github.com/texstudio-org/texstudio was verified as official when first introduced to the cask
  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx.dmg"
  appcast 'https://github.com/texstudio-org/texstudio/releases.atom',
          checkpoint: '4eef2d36c8465ab84c2ee2dd940dad4af05fe06f4ec192aecd2fc0c4fbd1aac7'
  name 'TeXstudio'
  homepage 'http://texstudio.org/'

  app 'texstudio.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*',
               '~/Library/Preferences/texstudio.plist',
               '~/Library/Saved Application State/texstudio.savedState',
             ]
end

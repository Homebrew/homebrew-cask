cask 'texstudio' do
  version '2.12.22'
  sha256 '1a509b7b58f5bf4d7a88cb0e36fb712bc52f7ca0c682346f37507002d5373220'

  # github.com/texstudio-org/texstudio was verified as official when first introduced to the cask
  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx.dmg"
  appcast 'https://github.com/texstudio-org/texstudio/releases.atom'
  name 'TeXstudio'
  homepage 'https://texstudio.org/'

  conflicts_with cask: 'texstudio-beta'
  depends_on macos: '>= :sierra'

  app 'texstudio.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*',
               '~/Library/Preferences/texstudio.plist',
               '~/Library/Saved Application State/texstudio.savedState',
             ]
end

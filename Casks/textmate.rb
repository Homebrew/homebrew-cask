cask 'textmate' do
  version '2.0.4'
  sha256 '1660caf4cb1b6fe54047da647e6c5e28d1208a42c46cf1b9e055b45ea44f35b1'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://api.textmate.org/releases/release?os=10.14.6',
          configuration: version
  name 'TextMate'
  homepage 'https://macromates.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'TextMate.app'
  binary "#{appdir}/TextMate.app/Contents/Resources/mate"

  uninstall quit: 'com.macromates.TextMate'

  zap trash: [
               '~/Library/Application Support/TextMate',
               '~/Library/Caches/com.macromates.TextMate',
               '~/Library/Preferences/com.macromates.TextMate.plist',
               '~/Library/Saved Application State/com.macromates.TextMate.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macromates.textmate.sfl2',
             ]
end

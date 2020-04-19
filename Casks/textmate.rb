cask 'textmate' do
  version '2.0.7'
  sha256 '30a87ccb0fdc9f3c73ab3197fa67678674d2325a1f2772bcd6bb41767a02318b'

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
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macromates.textmate.sfl2',
               "~/Library/Caches/com.apple.helpd/Generated/TextMate #{version.major} Help*",
               '~/Library/Caches/com.macromates.TextMate',
               '~/Library/Preferences/com.macromates.TextMate.plist',
               '~/Library/Preferences/com.macromates.TextMate.preview.plist',
               '~/Library/Saved Application State/com.macromates.TextMate.savedState',
             ]
end

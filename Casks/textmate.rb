cask 'textmate' do
  version '2.0-rc.28'
  sha256 '16e27c14df20641e4ff949022c776c7954dc2838fe4dd36e6053744442f48903'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom'
  name 'TextMate'
  homepage 'https://macromates.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'TextMate.app'
  binary "#{appdir}/TextMate.app/Contents/Resources/mate"

  zap trash: [
               '~/Library/Application Support/Avian',
               '~/Library/Application Support/TextMate',
               '~/Library/Caches/com.macromates.TextMate',
               '~/Library/Preferences/com.macromates.TextMate.preview.LSSharedFileList.plist',
               '~/Library/Preferences/com.macromates.TextMate.preview.plist',
               '~/Library/Preferences/com.macromates.TextMate.plist',
               '~/Library/Preferences/com.macromates.textmate.webpreview.plist',
               '~/Library/Preferences/com.macromates.textmate.latex_config.plist',
               '~/Library/Saved Application State/com.macromates.TextMate.savedState',
             ]
end

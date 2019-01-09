cask 'textmate' do
  version '2.0-rc.22'
  sha256 '8bd677a9bd57b2177a5f2b69d0d8f59216fd18f14c53abbd63c4dd807a44868f'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom'
  name 'TextMate'
  homepage 'https://macromates.com/'

  auto_updates true

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

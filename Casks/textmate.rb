cask 'textmate' do
  version '2.0-rc.9'
  sha256 '305cbcff17fd75b71ab64136e61f73d7a171d63383e650153763b0c27bff7158'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom',
          checkpoint: '95e7403180471619a8d7c2bbc02acf71b2bab034010af753ee8eada5d95b9789'
  name 'TextMate'
  homepage 'https://macromates.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

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

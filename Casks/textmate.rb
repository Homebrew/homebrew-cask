cask 'textmate' do
  version '2.0-beta.12.18'
  sha256 '9931e11ab19c39b1121a4609a68703afba35380c57c51bf7b7f1fffb098ea06f'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom',
          checkpoint: '22e56305d0dc3e992651ca649e64983b5795b407f31e19ba5612fbad7a14045a'
  name 'TextMate'
  homepage 'https://macromates.com/'
  license :gpl

  app 'TextMate.app'
  binary "#{appdir}/TextMate.app/Contents/Resources/mate"

  zap delete: [
                '~/Library/Application Support/Avian',
                '~/Library/Application Support/TextMate',
                '~/Library/Preferences/com.macromates.TextMate.preview.LSSharedFileList.plist',
                '~/Library/Preferences/com.macromates.TextMate.preview.plist',
                '~/Library/Preferences/com.macromates.textmate.webpreview.plist',
                '~/Library/Preferences/com.macromates.textmate.plist',
                '~/Library/Preferences/com.macromates.textmate.latex_config.plist',
              ]
end

cask 'textmate' do
  version '2.0-beta.12.25'
  sha256 '876ead761066708f20d80f075ebae87737c4ac45f74a57ca3137ba26cc0c4253'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom',
          checkpoint: '2358ac5ab71525d09e3b552589792cd096e4b440de4e9a028ce5c65dd26cff89'
  name 'TextMate'
  homepage 'https://macromates.com/'

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

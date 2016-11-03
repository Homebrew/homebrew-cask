cask 'textmate' do
  version '2.0-beta.12.32'
  sha256 '1903b9136aab02518f5d97ca505599a8bc36a2128cfb16f4e9c0a90bc7323e9b'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom',
          checkpoint: '7fe1d9e955f55b6f836ebe291bd0718b32a77b1f6a140312f9e947f3404e2401'
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

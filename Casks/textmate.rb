cask 'textmate' do
  version '2.0-beta.12.19'
  sha256 'c5a070d645128356c15a9f375f01170add0b4b3e34ad9bba27c5a1e5c6eb4f71'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom',
          checkpoint: '74914cfd6091eae0b7505c64c96a655327522b2c2d1bf73bc5d6d55ce9a9faf3'
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

cask 'textmate' do
  version '2.0-beta.11.9'
  sha256 'e49f2e805780757f172a9d79be02bcbca85d83570b031cdf8e0d4f675563630b'

  # textmate.org was verified as official when first introduced to the cask
  url "https://api.textmate.org/downloads/TextMate_#{version}.tbz"
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

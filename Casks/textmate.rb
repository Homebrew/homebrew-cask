cask 'textmate' do
  version '2.0-beta.9'
  sha256 'f22dee89bb8e80ad6379fb4766a931d5e73f9d56df4392e75afee831eec1778e'

  # textmate.org is the official download host per the vendor homepage
  url "https://api.textmate.org/downloads/TextMate_#{version}.tbz"
  name 'TextMate'
  homepage 'https://macromates.com/'
  license :gpl

  app 'TextMate.app'
  binary 'TextMate.app/Contents/Resources/mate'

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

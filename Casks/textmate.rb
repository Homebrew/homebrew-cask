cask :v1 => 'textmate' do
  version :latest
  sha256 :no_check

  # textmate.org is the official download host per the vendor homepage
  url 'https://api.textmate.org/downloads/release'
  name 'TextMate'
  homepage 'http://macromates.com/'
  license :gpl

  app 'TextMate.app'
  binary 'TextMate.app/Contents/Resources/mate'

  zap :delete => [
                  '~/Library/Application Support/Avian',
                  '~/Library/Application Support/TextMate',
                  '~/Library/Preferences/com.macromates.TextMate.preview.LSSharedFileList.plist',
                  '~/Library/Preferences/com.macromates.TextMate.preview.plist',
                  '~/Library/Preferences/com.macromates.textmate.webpreview.plist',
                  '~/Library/Preferences/com.macromates.textmate.plist',
                  '~/Library/Preferences/com.macromates.textmate.latex_config.plist',
                 ]
end

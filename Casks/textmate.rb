cask :v1 => 'textmate' do
  version :latest
  sha256 :no_check

  url 'https://api.textmate.org/downloads/release'
  homepage 'http://macromates.com/'
  license :unknown

  app 'TextMate.app'
  binary 'TextMate.app/Contents/Resources/mate'

  zap :delete => [
                  '~/Library/Application Support/TextMate',
                  '~/Library/Preferences/com.macromates.textmate.plist',
                  '~/Library/Preferences/com.macromates.textmate.latex_config.plist',
                 ]
end

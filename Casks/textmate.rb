class Textmate < Cask
  version 'latest'
  sha256 :no_check

  url 'https://api.textmate.org/downloads/release'
  homepage 'http://macromates.com/'

  app 'TextMate.app'
  zap :files => [
                 '~/Library/Application Support/TextMate',
                 '~/Library/Preferences/com.macromates.textmate.plist',
                 '~/Library/Preferences/com.macromates.textmate.latex_config.plist',
                ]
end

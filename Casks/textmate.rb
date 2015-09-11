cask :v1 => 'textmate' do
  version '2.0-beta.7.4'
  sha256 'd6dd70494f861ec34ccc9cef87763f4e4c3e97df3e0187e057e999fff9d860d1'

  # textmate.org is the official download host per the vendor homepage
  url "https://api.textmate.org/downloads/TextMate_#{version}.tbz"
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

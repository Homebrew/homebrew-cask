cask :v1 => 'textmate' do
  version '2.0-beta.8'
  sha256 'd3a55811439bb9878ce591e906c3540bf5ef18e6f46b224a57640c55d303c4f0'

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

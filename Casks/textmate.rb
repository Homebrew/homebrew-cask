cask 'textmate' do
  version '2.0-beta.9.2'
  sha256 '7ab6f15623330f40e5e022273438099b80a1c0160385f55dadb449b39d899a79'

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

cask 'upwork' do
  version '5.3.3.860,wub7hae1mtgzk09u'
  sha256 '35e30606289ae2a1b02aebd0694cd01df33891cdda7f129174cac241b0b3cc92'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Upwork.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://updates-desktopapp.upwork.com/binaries/versions-mac.json&splitter_1=Beta&index_1=0'
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'

  zap trash: [
               '~/Library/Application Support/Upwork',
               '~/Library/Caches/Upwork',
               '~/Library/Logs/Upwork',
               '~/Library/Saved Application State/com.upwork.upwork.savedState',
             ]
end

cask 'upwork' do
  version '5.4.2.3,6b1022fbf8794731'
  sha256 '4d6de341f043ecb948d9320d05fbc596d6abbdacb6d21b618cbcf28148a378bc'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Upwork.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://updates-desktopapp.upwork.com/binaries/versions-mac.json&splitter_1=Beta&index_1=0'
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'

  zap trash: [
               '~/Library/Application Support/CrashReporter/Upwork_*',
               '~/Library/Application Support/Upwork',
               '~/Library/Caches/Upwork',
               '~/Library/Logs/Upwork',
               '~/Library/Preferences/com.upwork.Upwork.plist',
               '~/Library/Saved Application State/com.upwork.upwork.savedState',
             ]
end

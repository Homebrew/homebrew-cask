cask 'upwork' do
  version '5.4.2.8,17caa201e7ae4660'
  sha256 '8c7638184de6fda7278e02f1931363c0063e475fb7703d8d547255ea60b519c7'

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

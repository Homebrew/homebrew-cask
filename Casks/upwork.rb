cask 'upwork' do
  version '5.3.3.883,1f817bc1fefd44e7'
  sha256 'acb2e43b6bde16b293974c38b41c10763186c92cefd2a69cf486cea9aca30060'

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

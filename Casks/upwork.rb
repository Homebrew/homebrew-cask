cask 'upwork' do
  version '5.4.2.2,18294613b3a84769'
  sha256 '942a63144d9eb1d57db372a4064f934306809e4d1001d22f54ec701b82fe2e33'

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

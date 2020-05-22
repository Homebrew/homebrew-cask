cask 'upwork' do
  version '5.4.1.10,974ee44ed5aa421c'
  sha256 '63b702d9d2db1611674a72c599c65c505c55ac62cbd88f3a5d212a5c342faba7'

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

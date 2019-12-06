cask 'upwork' do
  version '5.3.3.848,ciy2bosj7ts6feza'
  sha256 '6cba593f4140ddaa55e9a1c38d7f2c3ed87242a25dd9c8b0489654220791719b'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Upwork.dmg"
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

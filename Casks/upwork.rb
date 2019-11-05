cask 'upwork' do
  version '5.3.3.800,zh8y1qe7l33a9ip6'
  sha256 '519a935fa430ea36a54ea89ebb815aed27d34913beabbd5ae8a4b5e10437cb4b'

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

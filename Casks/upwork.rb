cask 'upwork' do
  version '5.2.3.771,okk32anbjc976nah'
  sha256 '19a684de87a3aae6f3e0b3b1b12431ff5e8a16d96a8b04b74fe5a00a3c321caf'

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

cask 'tweet-tray' do
  version '1.1.3'
  sha256 '611afd3ee43464de47ac1e4587fdae71f85205cb6d4075fa550c241214ed7298'

  url "https://github.com/jonathontoon/tweet-tray/releases/download/v#{version}/tweet-tray-#{version}.dmg"
  appcast 'https://github.com/jonathontoon/tweet-tray/releases.atom'
  name 'Tweet Tray'
  homepage 'https://github.com/jonathontoon/tweet-tray'

  app 'Tweet Tray.app'
end

cask 'track-o-bot' do
  version '0.6.2'
  sha256 'b694f4d4044a124ce3c02a001cfdc6dcb1f43c89bf902d79c8980163aa4e7554'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          checkpoint: '3004dffd237755437d82652db98224baa8c4da856c9558b7b29212ea79b0b775'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'
  license :gpl

  app 'Track-o-Bot.app'
end

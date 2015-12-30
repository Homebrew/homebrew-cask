cask 'track-o-bot' do
  version '0.6.2'
  sha256 'b694f4d4044a124ce3c02a001cfdc6dcb1f43c89bf902d79c8980163aa4e7554'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          :sha256 => '4917f6aa88f1777d953ae1c428ba3a215f7e949140fd060404602154b40eaec3'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'
  license :gpl

  app 'Track-o-Bot.app'
end

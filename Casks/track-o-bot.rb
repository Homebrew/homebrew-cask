cask :v1 => 'track-o-bot' do
  version '0.4.7'
  sha256 '36603bffbdff2017ff381ad49b1ca3a7640c4921da0380e3a6ffe7e6f8440fee'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'
  license :gpl

  app 'Track-o-Bot.app'
end

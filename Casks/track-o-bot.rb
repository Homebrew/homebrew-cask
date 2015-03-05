cask :v1 => 'track-o-bot' do
  version '0.4.2'
  sha256 '3746f662cda62047c8b9e870997bfc8d4f04040b72e1573177c4da2cfc5e8cb3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'
  license :gpl

  app 'Track-o-Bot.app'
end

cask :v1 => 'track-o-bot' do
  version '0.6.0'
  sha256 '14b9704616e5b8a626c1b38fe44a540b7bc0d23fd3669bce9e56618a8c69a865'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'
  license :gpl

  app 'Track-o-Bot.app'
end

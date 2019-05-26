cask 'trackereditor' do
  version '1.33.0.beta5'
  sha256 '9cf231c90553486bbb8f49d15cf075168c56f9c836c1c4874bffcbfcae1650ef'

  url "https://github.com/mrjayviper/homebrew-apps/releases/download/initial/trackereditor#{version}.zip"
  appcast 'https://github.com/GerryFerdinandus/bittorrent-tracker-editor/releases'
  name 'Bittorent Tracker Editor'
  homepage 'https://github.com/GerryFerdinandus/bittorrent-tracker-editor'

  app "trackereditor#{version}/trackereditor.app"
end

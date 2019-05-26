cask 'trackereditor' do
  version '1.33.0.beta.5'
  sha256 'd46d621b3aaf61c99aea90965229273628879c931f884362803fb719109d2d6c'

  url "https://github.com/mrjayviper/homebrew-apps/releases/download/initial/trackereditor#{version}.zip"
  appcast 'https://github.com/GerryFerdinandus/bittorrent-tracker-editor/releases'
  name 'Bittorent Tracker Editor'
  homepage 'https://github.com/GerryFerdinandus/bittorrent-tracker-editor'

  app "trackereditor#{version}/trackereditor.app"
end

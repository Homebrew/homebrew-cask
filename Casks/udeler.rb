cask 'udeler' do
  version '1.8.0'
  sha256 '2b949b86494818eb194a5e8cc97f1c7acbbdbeb87b4c5b8ff1e9e939de19e1c6'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end

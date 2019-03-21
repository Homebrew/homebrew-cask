cask 'udeler' do
  version '1.6.3'
  sha256 '8cf08ad8c2045b8f5b6fce27b2bfed4169f7a5ac75b4e67c5c2eec7a0b23e24e'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end

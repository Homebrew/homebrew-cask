cask 'udeler' do
  version '1.8.1'
  sha256 '54aae73a412ee07f5f60fcceab07af3080e8d0dda084bce914e5bb8148462495'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end

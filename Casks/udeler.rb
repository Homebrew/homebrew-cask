cask 'udeler' do
  version '1.6.2'
  sha256 'd7eb6ca284f753cbb38ab12b260f9a44fc375485c74a6de6af3f681047c19cad'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end

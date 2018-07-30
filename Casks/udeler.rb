cask 'udeler' do
  version '1.6.1'
  sha256 '3233862783a279ebd40ff2b4292fe615dbba9d3c85b3629230882bf95138ee7b'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end

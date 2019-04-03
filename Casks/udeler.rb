cask 'udeler' do
  version '1.7.0'
  sha256 '191f03ee627b7ef2e731448ace860c882b2eff60b27cdd05a3d95ebe748f28bc'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end

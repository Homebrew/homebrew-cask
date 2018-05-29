cask 'udeler' do
  version '1.6.0'
  sha256 '3ad01d8280c862bd8c9efb4ff94178128ea0001309a858766f7b442cf43f3ad4'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom',
          checkpoint: '7f1091e5bda9da195669b427878ddbb7b25d13f249e4c025225c5b38a1539439'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end

cask 'timing' do
  version :latest
  sha256 :no_check

  url 'https://timingapp.com/download/Timing.app.zip'
  appcast 'https://timingapp.com/updates/timing2.xml'
  name 'Timing'
  homepage 'https://timingapp.com/'

  app 'Timing.app'
end

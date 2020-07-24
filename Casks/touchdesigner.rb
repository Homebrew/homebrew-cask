cask 'touchdesigner' do
  version '2020.25380'
  sha256 '04b08af88d8cfd3918a75510b6b8eb167412950c4d1fdd8f285c142f6aeb617d'

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast 'https://www.derivative.ca/download/'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app 'TouchDesigner.app'
end

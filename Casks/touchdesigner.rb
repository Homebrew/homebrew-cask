cask 'touchdesigner' do
  version '2020.20625'
  sha256 '86b8d5cfe1a00ead8dcca965cd025781beae3e6b9cbbc749378581729e551a40'

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast 'https://www.derivative.ca/download/'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app 'TouchDesigner.app'
end

cask 'touchdesigner' do
  version '099.2019.18360'
  sha256 '3e50606030de57744ea1c048b3cdb0654c35b31b4131b22e8812c52e18a47e2c'

  url "https://download.derivative.ca/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

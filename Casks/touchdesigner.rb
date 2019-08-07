cask 'touchdesigner' do
  version '099.2019.17550'
  sha256 '3b573ae4d50ce6d67f2d208602507d2a279f0c99106a931ebead6261e4cb3709'

  url "https://download.derivative.ca/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

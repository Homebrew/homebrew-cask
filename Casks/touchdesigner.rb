cask 'touchdesigner' do
  version '099.2018.23760'
  sha256 'f289d54c6e57e2d354c4a4a04eac4ceec78d19d5fac747cd0ba801f1f7aa7d5c'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

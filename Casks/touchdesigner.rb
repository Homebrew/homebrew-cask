cask 'touchdesigner' do
  version '099.2018.26450'
  sha256 'b97813a8348887895a1a781ae48b3587e93cac39a89065bb28f34bc3e3ed0935'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

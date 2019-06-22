cask 'touchdesigner' do
  version '099.2019.16600'
  sha256 'd10e67535300864d98ed02db42abff132001694b03d39ef05e0c87cd4aba6ab9'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

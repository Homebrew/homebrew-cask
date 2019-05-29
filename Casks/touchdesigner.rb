cask 'touchdesigner' do
  version '099.2019.15230'
  sha256 '106c27ffa58dc29136c6db5942b09a8653c4ef78098b74e017ea7b511c0650eb'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

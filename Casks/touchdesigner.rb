cask 'touchdesigner' do
  version '099.2019.14650'
  sha256 'd9c271a94ed0df469b31000179cd0be314e2b8470d529f167c915f6f0f35693b'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

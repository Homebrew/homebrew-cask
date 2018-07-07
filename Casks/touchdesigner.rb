cask 'touchdesigner' do
  version '099.2018.24330'
  sha256 'e5f6930682b3464bfc266d42dcb773a7961e8d0a565083229078623b907381fc'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

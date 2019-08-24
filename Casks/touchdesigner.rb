cask 'touchdesigner' do
  version '099.2019.18580'
  sha256 'dfab1d159b08d9ab2abd0c4b98f6d731978ea29e95d499c88f80d0ded82c6b79'

  url "https://download.derivative.ca/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

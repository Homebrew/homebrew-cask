cask 'touchdesigner' do
  version '099.2019.20140'
  sha256 '2c4075355fff965106269dc257c4ee9fe3bf783d7d31f1f0f7c4f5150c196c46'

  url "https://download.derivative.ca/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

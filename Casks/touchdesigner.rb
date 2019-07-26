cask 'touchdesigner' do
  version '099.2019.17550'
  sha256 '135261081607355f7829ceb7662396934a52ecb61e6593acd2c58d06776f7c9f'

  url "https://download.derivative.ca/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

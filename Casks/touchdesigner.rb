cask 'touchdesigner' do
  version '099.2019.19930'
  sha256 '4cae2f6c2640e249a361b37010beb8e509054d887d98cf61e1d60e29f7d6f179'

  url "https://download.derivative.ca/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

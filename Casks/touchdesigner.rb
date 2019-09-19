cask 'touchdesigner' do
  version '099.2019.19160'
  sha256 'be438e2edc184b0b9a2e62e946c861340cb892030bacfbb5ba48f801b402ce88'

  url "https://download.derivative.ca/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

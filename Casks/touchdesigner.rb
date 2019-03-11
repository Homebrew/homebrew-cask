cask 'touchdesigner' do
  version '099.2018.27910'
  sha256 'd70f7cbec5f0a58126a129a3c4966c12f976de9ec9bff3ec0b85bf594b90cf2b'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

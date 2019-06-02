cask 'touchdesigner' do
  version '099.2019.15840'
  sha256 '8e29d065c21915f72261e2ad678c31df673ba23f7493f3ac638a7330a3821658'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

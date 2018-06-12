cask 'touchdesigner' do
  version '099.2018.23120'
  sha256 '5266ca8d5b603d5277f3649af8b4da26b583f5f8f9fc24ae36e574a392312af5'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

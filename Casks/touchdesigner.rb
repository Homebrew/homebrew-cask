cask 'touchdesigner' do
  version '099.2018.28070'
  sha256 '88366226083c9041c123ddf4b53d4d42d3bc0bfa19b15169c55c95f13e9f7607'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

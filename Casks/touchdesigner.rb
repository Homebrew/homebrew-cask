cask 'touchdesigner' do
  version '099.2017.7180'
  sha256 'a2d0d1b50f431ba7587eeb99ebc0aa8c55b5d5d2c9b66f3c905551c62df53028'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp",
          checkpoint: '90aacc97f46bf0ab6d0bf0cd9c28a423e3adaf7fdf27d6464648f2bd040c5c71'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

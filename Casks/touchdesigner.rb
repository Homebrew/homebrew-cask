cask 'touchdesigner' do
  version '099.2019.13330'
  sha256 '12cf7858b4e6094e5c9ce3c272facec5e1b65bac1e2caf44278095be5b374aa0'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp"
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end

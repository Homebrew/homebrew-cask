cask 'touchdesigner' do
  version '2020.22080'
  sha256 '7bd4927b0acdff6834cb7e417b47024a2b122a013e110703436eb2b8f5e84f20'

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast 'https://www.derivative.ca/download/'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app 'TouchDesigner.app'
end

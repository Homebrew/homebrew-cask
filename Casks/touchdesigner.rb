cask 'touchdesigner' do
  version '2020.23680'
  sha256 '55ae373e61feb506335b28bad6aa7d979f6af81f45b5adaba66daa7abe18bb61'

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast 'https://www.derivative.ca/download/'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app 'TouchDesigner.app'
end

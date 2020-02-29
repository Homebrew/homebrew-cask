cask 'touchdesigner' do
  version '2020.20020'
  sha256 '5fa5d8dfbfd8592c6819bcc61bd01c372c8694eb309cc1208c854bc3903b97c5'

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast 'https://www.derivative.ca/download/'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app 'TouchDesigner.app'
end

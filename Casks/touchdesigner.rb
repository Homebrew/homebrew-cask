cask 'touchdesigner' do
  version '2020.20620'
  sha256 '7b7d154950cf3e9cd58b762ba4def696a85e57078913fb2691b4575852ce2226'

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast 'https://www.derivative.ca/download/'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app 'TouchDesigner.app'
end

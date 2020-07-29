cask 'touchdesigner' do
  version '2020.24520'
  sha256 '9b557eae79c73331969699389ef886e6e07535c8c7bd4b39f859115062a9d4e1'

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  appcast 'https://www.derivative.ca/download/'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app 'TouchDesigner.app'
end

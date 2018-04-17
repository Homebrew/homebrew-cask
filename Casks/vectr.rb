cask 'vectr' do
  version '0.1.16'
  sha256 'f53af89b1c671f95ba097b33e57dca956942923877cf762a1685871ab07b1921'

  url "http://download.vectr.com/desktop/#{version}/mac/Vectr.dmg"
  name 'Vectr'
  homepage 'https://vectr.com/'

  app 'Vectr.app'
end

cask 'vectr' do
  version '0.1.11'
  sha256 'a6d345d5f6859fc888519c293f75d20e610f785f504f9e8e7832fa61de431d1a'

  url "http://download.vectr.com/desktop/#{version}/mac/Vectr-mac.dmg"
  name 'Vectr'
  homepage 'https://vectr.com/'

  app 'Vectr.app'
end

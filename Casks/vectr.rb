cask 'vectr' do
  version '0.1.14'
  sha256 '67c440898f34ff34d8d61d07c3a5e3de8068f0182a080998cec5090bd7b90d97'

  url "http://download.vectr.com/desktop/#{version}/mac/Vectr-mac.dmg"
  name 'Vectr'
  homepage 'https://vectr.com/'

  app 'Vectr.app'
end

cask 'vectr' do
  version '0.1.12'
  sha256 '73cad5c49f202d5b2b18b2ad813c2e7d4e4737107c3f1f95c77e66add7a77933'

  url "http://download.vectr.com/desktop/#{version}/mac/Vectr-mac.dmg"
  name 'Vectr'
  homepage 'https://vectr.com/'

  app 'Vectr.app'
end

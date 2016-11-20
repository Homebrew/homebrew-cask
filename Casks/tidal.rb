cask 'tidal' do
  version :latest
  sha256 :no_check

  url 'https://download.tidal.com/desktop/TIDAL.dmg'
  name 'TIDAL'
  homepage 'http://tidal.com/us/download'

  app 'TIDAL.app'
end

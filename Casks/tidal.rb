cask 'tidal' do
  version :latest
  sha256 :no_check

  url 'http://download.tidal.com/desktop/TIDAL.dmg'
  name 'TIDAL'
  homepage 'http://tidal.com/us/download'
  license :closed

  app 'TIDAL.app'
end

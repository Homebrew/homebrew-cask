cask 'tidal' do
  version :latest
  sha256 :no_check

  url 'https://download.tidal.com/desktop/TIDAL.dmg'
  name 'TIDAL'
  homepage 'https://tidal.com/us/download'

  app 'TIDAL.app'
end

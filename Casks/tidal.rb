cask 'tidal' do
  version :latest
  sha256 :no_check

  url 'https://download.tidal.com/desktop/TIDAL.dmg'
  name 'TIDAL'
  homepage 'https://tidal.com/'

  app 'TIDAL.app'

  zap trash: [
               '~/Library/Application Support/TIDAL',
               '~/Library/Caches/com.tidal.desktop',
               '~/Library/Caches/com.tidal.desktop.ShipIt',
               '~/Library/Logs/TIDAL',
               '~/Library/Preferences/com.tidal.*',
               '~/Library/Saved Application State/com.tidal.desktop.savedState',
             ]
end

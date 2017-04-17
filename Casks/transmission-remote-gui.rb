cask 'transmission-remote-gui' do
  version '5.0.1'
  sha256 '322de6700ef13ea31ed0376a1783434b5d5660e63d267169f8ed0f8d4caf5f62'

  url "https://downloads.sourceforge.net/transgui/#{version}/transgui-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/transgui/rss',
          checkpoint: 'b83a50dcf74d826bb84b9d5aa6e19bfca4a8e0090e00a3feb7976bb9869dfe0a'
  name 'Transmission Remote GUI'
  homepage 'https://sourceforge.net/projects/transgui/'

  pkg 'transgui.pkg'

  uninstall pkgutil: 'com.transgui.*'
end

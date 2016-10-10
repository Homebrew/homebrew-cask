cask 'transmission-remote-gui' do
  version '5.0.1'
  sha256 'b961aeb244b2519563837745f3475d21379e3da32bae2b3cbb20ca91d1a90d75'

  url "https://downloads.sourceforge.net/transgui/#{version}/transgui-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/transgui/rss',
          checkpoint: 'b83a50dcf74d826bb84b9d5aa6e19bfca4a8e0090e00a3feb7976bb9869dfe0a'
  name 'Transmission Remote GUI'
  homepage 'https://sourceforge.net/projects/transgui/'

  pkg 'transgui.pkg'

  uninstall pkgutil: 'com.transgui.*'
end

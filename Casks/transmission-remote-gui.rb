cask 'transmission-remote-gui' do
  version '5.0.1'
  sha256 'b961aeb244b2519563837745f3475d21379e3da32bae2b3cbb20ca91d1a90d75'

  url "https://downloads.sourceforge.net/transgui/#{version}/transgui-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/transgui/rss',
          checkpoint: '8d676af5ce3c702cfce68c3a7323f09dadc71098bc3212d3551472952e81b78a'
  name 'Transmission Remote GUI'
  homepage 'https://sourceforge.net/projects/transgui/'

  pkg 'transgui.pkg'

  uninstall pkgutil: 'com.transgui.*'
end

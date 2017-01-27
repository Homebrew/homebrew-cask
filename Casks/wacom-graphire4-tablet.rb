cask 'wacom-graphire4-tablet' do
  version '5.3.0-3'
  sha256 '0299398282cf86d56bd8f0701ef9c3140e901b8ea72ec6821a00871acdd25e76'

  url "http://cdn.wacom.com/U/Drivers/Mac/Consumer/#{version.sub(%r{-.*}, '').delete('.')}/PenTablet_#{version}.dmg"
  name 'Graphire4 (CTE) Legacy Driver'
  homepage 'https://www.wacom.com/support/graphire-support'

  pkg 'Install Bamboo.pkg'

  uninstall launchctl: 'com.wacom.pentablet',
            quit:      [
                         'com.wacom.TabletDriver',
                         'com.wacom.PenTabletDriver',
                         'com.wacom.ConsumerTouchDriver',
                       ],
            pkgutil:   'com.wacom.installpentablet'
end

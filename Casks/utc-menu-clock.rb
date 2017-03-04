cask 'utc-menu-clock' do
  version '1.2'
  sha256 '8a6d26228495aa802b3f9f80e43ee58bff92097e7de41de86dae994a9350d9b2'

  url "https://github.com/downloads/netik/UTCMenuClock/UTCMenuClock_#{version}_installer.pkg"
  name 'UTCMenuClock'
  homepage 'https://github.com/netik/UTCMenuClock'

  pkg "UTCMenuClock_#{version}_installer.pkg"

  uninstall pkgutil: 'net.retina.utcmenuclock.*'
end

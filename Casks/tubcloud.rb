cask :v1 => 'tubcloud' do
  version :latest
  sha256 :no_check

  url 'https://updates.owncloud.tu-berlin.de/tubcloud-latest-macos.pkg'
  name 'tubCloud Client'
  homepage 'https://www.tubit.tu-berlin.de/menue/dienste/daten_server/tubcloud/tubcloud_sync-client/'
  license :gpl

  pkg 'tubcloud-latest-macos.pkg'

  uninstall :pkgutil => 'de.tu-berlin.tubit.owncloud'
end

cask 'tubcloud' do
  version :latest
  sha256 :no_check

  url 'https://updates.tubcloud.tu-berlin.de/clients/tubcloud-latest-macos.pkg'
  name 'tubCloud Client'
  homepage 'https://www.tubit.tu-berlin.de/menue/dienste/daten_server/tubcloud/tubcloud_sync-client/'

  depends_on macos: '>= :el_capitan'

  pkg 'tubcloud-latest-macos.pkg'

  uninstall pkgutil: [
                       'com.ownCloud.finderPlugin',
                       'de.tu-berlin.tubcloud',
                     ]
end

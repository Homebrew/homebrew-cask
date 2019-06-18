cask 'tiptoi-manager' do
  version :latest
  sha256 :no_check

  # tiptoidata.s3-de.object.vdc.interoute.com was verified as official when first introduced to the cask
  url "http://tiptoidata.s3-de.object.vdc.interoute.com/installer_flat/tiptoi_Manager_Installer.pkg"
  name 'tiptoi® Manager'
  homepage 'https://www.ravensburger.org/nl/ontdek/tiptoi/index.html'

  pkg 'tiptoi_Manager_Installer.pkg'

  uninstall pkgutil: 'com.ravensburger.tiptoimanager'
end

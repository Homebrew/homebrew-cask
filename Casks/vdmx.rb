cask 'vdmx' do
  version :latest
  sha256 :no_check

  url 'http://vidvox.net/download/vdmx_demo'
  name 'VDMX5'
  homepage 'http://vidvox.net/'

  pkg 'VDMX5 Installer.pkg'

  uninstall pkgutil: [
                       'com.Vidvox.pkg.Hap',
                       'com.Vidvox.pkg.VidvoxISFresources',
                       'com.vidvox.pkg.VDMX5Installer',
                     ]
end

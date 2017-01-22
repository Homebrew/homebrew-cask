cask 'vdmx' do
  version 'b8.6.1.1'
  sha256 'c6606f03f16c421fcf26e06b8f5a3c338efed14087babadbccf7a1705480acdf'

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

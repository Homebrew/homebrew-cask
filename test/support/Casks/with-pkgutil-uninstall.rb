cask :v1test => 'with-pkgutil-uninstall' do
  version '1.2.3'
  sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

  url TestHelper.local_binary_url('MyFancyPkg.zip')
  homepage 'http://example.com/fancy-pkg'

  pkg 'Fancy.pkg'
  uninstall :pkgutil => 'my.fancy.package.*',
            :kext => 'my.fancy.package.kernelextension',
            :launchctl => 'my.fancy.package.service'
end

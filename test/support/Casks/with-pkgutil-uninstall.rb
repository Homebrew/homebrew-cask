class WithPkgutilUninstall < TestCask
  url TestHelper.local_binary('MyFancyPkg.zip')
  homepage 'http://example.com/fancy-pkg'
  version '1.2.3'
  sha1 '8588bd8175a54b8e0a1310cc18e6567d520ab7c4'
  install 'Fancy.pkg'
  uninstall :pkgutil => 'my.fancy.package.*', :kext => 'my.fancy.package.kernelextension'
end

class WithInstallScript < TestCask
  url TestHelper.local_binary('caffeine.zip')
  homepage 'http://example.com/with-install-script'
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
  install_script '/usr/bin/true'
end

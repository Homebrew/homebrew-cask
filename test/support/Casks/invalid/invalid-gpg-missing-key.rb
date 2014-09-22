class InvalidGpgMissingKeys < TestCask
  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/invalid-gpg-missing-keys'
  gpg 'http://example.com/gpg-signature.asc'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
  version '1.2.3'
  app 'Caffeine.app'
end

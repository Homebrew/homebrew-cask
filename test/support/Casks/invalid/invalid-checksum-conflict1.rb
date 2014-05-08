class InvalidChecksumConflict1 < TestCask
  # @@@ todo this test cask can be removed when support for no_checksum is dropped
  url TestHelper.local_binary('caffeine.zip')
  homepage 'http://example.com/local-caffeine'
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
  no_checksum
  link 'Caffeine.app'
end

test_cask 'invalid-gpg-parameter' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/invalid-gpg-type'
  gpg 'http://example.com/gpg-signature.asc',
      :no_such_parameter => :value

  app 'Caffeine.app'
end

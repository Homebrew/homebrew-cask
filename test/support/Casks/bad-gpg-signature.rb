test_cask 'bad-gpg-signature' do
  version '2.1.1_tampered'
  sha256 '2be45cd67fc081b9e9cdbcc5b43a74a010ae2ae0a8ee9efdf7295e7a1e144143'

  url TestHelper.local_binary_url('gnupg-2.1.1_tampered.tar.bz2')
  homepage 'http://example.com/bad-gpg-ignature'
  gpg TestHelper.local_support_url('gnupg-2.1.1.tar.bz2.sig'),
      key_url: 'https://www.gnupg.org/signature_key.html'

  stage_only true
end

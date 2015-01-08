cask :v1test => 'bad-gpg-signature' do
  version '2.1.1_tampered'
  sha256 '2be45cd67fc081b9e9cdbcc5b43a74a010ae2ae0a8ee9efdf7295e7a1e144143'

  url TestHelper.local_binary_url('gnupg-2.1.1_tampered.tar.bz2')
  homepage 'http://example.com/bad-gpg-ignature'
  gpg TestHelper.local_support_url('gnupg-2.1.1.tar.bz2.sig'),
      :key_id => 'd8692123c4065dea5e0f3ab5249b39d24f25e3b6'

  stage_only true
end

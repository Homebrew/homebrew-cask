cask :v1test => 'good-gpg-signature' do
  version '2.1.1'
  sha256 '70ecd01d2875db62624c911c2fd815742f50aef5492698eb3bfc09a08690ce49'

  url TestHelper.local_binary_url('gnupg-2.1.1.tar.bz2')
  homepage 'http://example.com/good-gpg-signature'
  gpg TestHelper.local_support_url('gnupg-2.1.1.tar.bz2.sig'),
      :key_id => 'd8692123c4065dea5e0f3ab5249b39d24f25e3b6'

  stage_only true
end

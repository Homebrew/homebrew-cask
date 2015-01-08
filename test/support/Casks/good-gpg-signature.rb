cask :v1test => 'good-gpg-signature' do
  version '2.1.1'
  sha256 '70ecd01d2875db62624c911c2fd815742f50aef5492698eb3bfc09a08690ce49'

  url TestHelper.local_binary_url('gnupg-2.1.1.tar.bz2')
  homepage 'http://example.com/good-gpg-signature'
  gpg TestHelper.local_support_url('gnupg-2.1.1.tar.bz2.sig'),
      :key_url => 'https://www.gnupg.org/signature_key.html'

  stage_only true
end

test_cask 'with-two-apps-correct' do
  version '1.2.3'
  sha256 'c0c79dce9511c80603328013dbbcb80b859cc8b9190660b6832b5f0e60d74c82'

  url TestHelper.local_binary_url('2_app_caffeine.zip')
  homepage 'http://example.com/local-caffeine'

  app 'Caffeine.app'
  app 'Caffeine-2.app'
end

cask :v1test => 'missing-checksum' do
  version '1.2.3'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/local-caffeine'

  app 'Caffeine.app'
end

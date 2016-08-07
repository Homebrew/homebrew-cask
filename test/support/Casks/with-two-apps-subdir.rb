test_cask 'with-two-apps-subdir' do
  version '1.2.3'
  sha256 '03edce6992a6095e120dcfadf7049158589ae6f0548c145ed1b1c6f2883f6dca'

  url TestHelper.local_binary_url('2_app_subdir.zip')
  homepage 'http://example.com/local-caffeine'

  app 'subdir/Caffeine.app'
  app 'subdir/Caffeine-2.app'
end

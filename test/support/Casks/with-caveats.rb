cask :v1test => 'with-caveats' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/local-caffeine'

  app 'Caffeine.app'
  # simple string is evaluated at compile-time
  caveats <<-EOS.undent
    Here are some things you might want to know.
    EOS
  # do block is evaluated at install-time
  caveats do
    "Cask token: #{token}"
  end
  # a do block may print and use a DSL
  caveats do
    puts 'Custom text via puts followed by DSL-generated text:'
    path_environment_variable('/custom/path/bin')
  end
end

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
    "Cask title: #{title}"
  end
  # a do block may print and use a DSL
  caveats do
    puts 'Custom text via puts followed by DSL-generated text:'
    path_environment_variable('/custom/path/bin')
    # since all known OS versions are specified, no output should be
    # generated here during the test
    os_version_only('10.0', '10.1', '10.2', '10.3', '10.3', '10.5', '10.6', '10.7', '10.8', '10.9', '10.10')
  end
  caveats do
    # since both valid arches are specified, no output should be
    # generated here during the test
    arch_only('intel-32', 'intel-64')
  end
end

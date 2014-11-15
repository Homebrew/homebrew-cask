class WithConditionalCaveats < TestCask
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/local-caffeine'

  app 'Caffeine.app'
  # a do block may print and use a DSL
  caveats do
    puts 'This caveat is conditional' if false
  end
  caveats do
    # since both valid arches are specified, no output should be
    # generated here during the test
    arch_only('intel-32', 'intel-64')
  end
end

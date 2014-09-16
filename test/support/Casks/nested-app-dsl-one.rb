class NestedAppDslOne < TestCask
  # todo: This Cask can be removed after DSL 1.0 transition,
  #       b/c the main Cask nested-app.rb will be
  #       adopting this syntax.
  url TestHelper.local_binary_url('NestedApp.dmg.zip')
  homepage 'http://example.com/nested-app'
  version '1.2.3'
  sha256 '1866dfa833b123bb8fe7fa7185ebf24d28d300d0643d75798bc23730af734216'
  container :nested => 'NestedApp.dmg'
  app 'MyNestedApp.app'
end

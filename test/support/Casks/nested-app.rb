class NestedApp < TestCask
  url TestHelper.local_binary('NestedApp.dmg.zip')
  homepage 'http://example.com/nested-app'
  version '1.2.3'
  sha256 '1866dfa833b123bb8fe7fa7185ebf24d28d300d0643d75798bc23730af734216'
  nested_container 'NestedApp.dmg'
  app 'MyNestedApp.app'
end

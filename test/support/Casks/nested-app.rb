class NestedApp < TestCask
  url TestHelper.local_binary('NestedApp.dmg.zip')
  homepage 'http://example.com/nested-app'
  version '1.2.3'
  sha1 'de226f9ced77ae359ddb3c8764c605a391199d5c'
  nested_container 'NestedApp.dmg'
  link 'MyNestedApp.app'
end


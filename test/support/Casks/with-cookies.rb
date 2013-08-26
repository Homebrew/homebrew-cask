class WithCookies < TestCask
  url 'http://example.com/TestCask.dmg', :cookies => { "foo" => "bar" }
  homepage 'http://example.com/'
  version '1.2.3'
  sha1 '0123456789012345678901234567890123456789'
  link 'TestCask.app'
end


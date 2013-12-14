class WithFakeUserAgent < TestCask
  url 'http://example.com/file.dmg'
  fake_user_agent
  homepage 'http://example.com/'
  version '3.2'
  sha1 '5a35b6d47150b60e0cf6892bfa7a37a9f9f30d76'
  link 'Mac.app'
end

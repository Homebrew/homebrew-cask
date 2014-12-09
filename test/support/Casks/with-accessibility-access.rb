cask :v1test => 'with-accessibility-access' do
  version '1.2.3'
  sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

  url 'http://example.com/TestCask.dmg'
  homepage 'http://example.com/'

  app 'TestCask.app'

  accessibility_access true
end

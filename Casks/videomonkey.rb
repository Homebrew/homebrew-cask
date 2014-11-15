cask :v1 => 'videomonkey' do
  version '0.16'
  sha256 'ab09a3bb98a78d32ae48c55b6572e4d1e10ead0f26d5ba895a9a2ee5c105088c'

  url "http://videomonkey.org/download/videomonkey-#{version}.zip"
  appcast 'http://videomonkey.org/releases/videomonkeycast.xml'
  homepage 'http://videomonkey.org/'
  license :unknown

  app 'VideoMonkey.app'
end

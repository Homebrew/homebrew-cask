cask 'videomonkey' do
  version '0.17'
  sha256 'f0f70793f13f6e52f4115d292d3d425749a8d70b36f47055640b4ce1f519df6b'

  url "http://videomonkey.org/download/videomonkey-#{version}.zip"
  appcast 'http://videomonkey.org/releases/videomonkeycast.xml'
  name 'Video Monkey'
  homepage 'http://videomonkey.org/'

  app 'VideoMonkey.app'
end

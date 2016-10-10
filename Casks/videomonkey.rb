cask 'videomonkey' do
  version '0.17'
  sha256 'f0f70793f13f6e52f4115d292d3d425749a8d70b36f47055640b4ce1f519df6b'

  url "http://videomonkey.org/download/videomonkey-#{version}.zip"
  appcast 'http://videomonkey.org/releases/videomonkeycast.xml',
          checkpoint: 'f048d314291a5a1c888e1ebf98a7a08c42085a6b15b72be3ea2e9375a5d8a090'
  name 'Video Monkey'
  homepage 'http://videomonkey.org/'

  app 'VideoMonkey.app'
end

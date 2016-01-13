cask 'videomonkey' do
  version '0.17'
  sha256 'f0f70793f13f6e52f4115d292d3d425749a8d70b36f47055640b4ce1f519df6b'

  url "http://videomonkey.org/download/videomonkey-#{version}.zip"
  appcast 'http://videomonkey.org/releases/videomonkeycast.xml',
          :sha256 => 'c91aa43fadae980c2bce3b6bd1444d70ec281654a0a6657c6c00b2bea7ded7a4'
  name 'Video Monkey'
  homepage 'http://videomonkey.org/'
  license :bsd

  app 'VideoMonkey.app'
end

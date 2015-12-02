cask :v1 => 'videomonkey' do
  version '0.17'
  sha256 'f0f70793f13f6e52f4115d292d3d425749a8d70b36f47055640b4ce1f519df6b'

  url "http://videomonkey.org/download/videomonkey-#{version}.zip"
  appcast 'http://videomonkey.org/releases/videomonkeycast.xml',
          :sha256 => '76c09866931509d5fbe0de5c46fa1466520a43885a32f82e72dd16173af54daa'
  name 'Video Monkey'
  homepage 'http://videomonkey.org/'
  license :bsd

  app 'VideoMonkey.app'
end

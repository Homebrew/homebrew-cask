cask :v1 => 'the-archive-browser' do
  version '1.9.1'
  sha256 'c658cc67fde3773b20731394c3ca2829285b3e02efa10c4efb360b2bf053f26e'

  url "http://wakaba.c3.cx/releases/mac/TheArchiveBrowser#{version}.zip"
  name 'The Archive Browser'
  homepage 'http://archivebrowser.c3.cx'
  license :commercial

  app 'The Archive Browser.app'
end

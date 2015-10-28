cask :v1 => 'the-archive-browser' do
  version '1.10.1'
  sha256 '6bdb2ff4af904bd5228b0c399ce6d285807a3674e54bbc3a887a26ab1282d0cc'

  url "http://wakaba.c3.cx/releases/TheArchiveBrowser/TheArchiveBrowser#{version}.zip"
  name 'The Archive Browser'
  homepage 'http://archivebrowser.c3.cx'
  license :commercial

  app 'The Archive Browser.app'
end

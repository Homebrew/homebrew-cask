cask :v1 => 'tribler' do
  version '6.4.1'
  sha256 'aef90693c230f94ceeb5a4edf172344bd41d5d2cc918df0c2c1a2d2444495073'

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  homepage 'http://www.tribler.org'
  license :oss

  app 'Tribler.app'
end

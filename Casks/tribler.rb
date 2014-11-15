cask :v1 => 'tribler' do
  version '6.3.2'
  sha256 'd82c29349f70f7bb260012299f8d60a5da0f5a474c75e2bb74c37133f45878b2'

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  homepage 'http://www.tribler.org'
  license :oss

  app 'Tribler.app'
end

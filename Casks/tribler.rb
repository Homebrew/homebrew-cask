cask :v1 => 'tribler' do
  version '6.4.0'
  sha256 '9e622469bdf0178c609f6f43339141f1c902f7e5ca33df02667ed81d047b6520'

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  homepage 'http://www.tribler.org'
  license :oss

  app 'Tribler.app'
end

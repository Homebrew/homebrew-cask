# encoding: UTF-8
cask :v1 => 'xee' do
  version '3.4'
  sha256 'e9d47feb6fd1365333958e04372bbc02d3bc098ba7a14695a0c91957dfb1fb99'

  url "http://wakaba.c3.cx/releases/mac/Xee#{version}.dmg"
  homepage 'http://xee.c3.cx/'
  license :unknown    # todo: improve this machine-generated value

  app 'Xee³.app'
end

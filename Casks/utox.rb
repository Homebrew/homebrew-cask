cask :v1 => 'utox' do
  version '0.4.4'
  sha256 'e18e9f02b22f837d284c6669c552fa1634ed319d353e3605d92f9412666c8fa9'

  # zodiaclabs.org is the official download host per the vendor homepage
  url "https://zodiaclabs.org/storage/c1/uTox-#{version}.dmg"
  name 'uTox'
  homepage 'https://www.tox.chat'
  license :oss

  app 'uTox.app'
end

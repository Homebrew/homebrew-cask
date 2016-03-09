cask 'utox' do
  version '0.5.0'
  sha256 '5aa04ac5454c1786388f18bde60a355b704860debca17faa82eb9c1ecf9846ae'

  # zodiaclabs.org is the official download host per the vendor homepage
  url "https://zodiaclabs.org/storage/c1/uTox-mac-#{version}.dmg"
  name 'uTox'
  homepage 'https://www.tox.chat'
  license :oss

  app 'uTox.app'
end

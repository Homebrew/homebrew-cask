cask 'waterfox' do
  version '43.0.4'
  sha256 'f18ecbb17af5d186ab97c85ce226c29c001cbe83d4a5d565aaf4ec435027be6a'

  # netdna-ssl.com is the official download host per the vendor homepage
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org'
  license :oss

  app 'Waterfox.app'
end

cask 'waterfox' do
  version '43.0.4'
  sha256 '49720ec39019cc7991531677014bbd140062fb72f0d5dbd963f7f14b75da37b6'

  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org'
  license :oss

  app 'Waterfox.app'
end

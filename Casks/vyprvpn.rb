class Vyprvpn < Cask
  version '2.6.0.2408'
  sha256 'eafade7cd1ed880cefb412f67015d9bdc259670f83cae269913d5dfa97b502e4'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  homepage 'http://www.goldenfrog.com/vyprvpn'
  license :commercial

  app 'VyprVPN.app'
end

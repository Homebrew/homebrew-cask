cask 'vyprvpn' do
  version '2.14.0.5485'
  sha256 '40076ef12cf2c5589f3f1205216471c1bf31eae1c9e5a40a35bd3c3d20c64883'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'

  app 'VyprVPN.app'
end

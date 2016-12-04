cask 'vyprvpn' do
  version '2.13.1.5133'
  sha256 'a99bdc5bc316d8a19c3ddd9e51185503f08fe657e01699f49b7beee0f1e5d642'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'

  app 'VyprVPN.app'
end

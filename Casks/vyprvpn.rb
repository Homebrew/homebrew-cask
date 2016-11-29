cask 'vyprvpn' do
  version '2.11.0.4583'
  sha256 '54ee2233f097b891af6e6b2da54940a8e838cba887dcec834219d1476bff099c'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'

  app 'VyprVPN.app'
end

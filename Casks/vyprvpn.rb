cask 'vyprvpn' do
  version '2.13.0.5056'
  sha256 '1a3c76aa8970af5e6597324df2f924a82552e7b021e824980d5944b671e6d9da'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'

  app 'VyprVPN.app'
end

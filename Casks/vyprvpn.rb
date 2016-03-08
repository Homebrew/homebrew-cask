cask 'vyprvpn' do
  version '2.7.5.3042'
  sha256 '7a5caf62bad58ed52715de9e9a4f69a901ee70ae98bbc7432fc2ae4e34cc70d4'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'
  license :commercial

  app 'VyprVPN.app'
end

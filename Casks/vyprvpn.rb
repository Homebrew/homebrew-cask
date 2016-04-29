cask 'vyprvpn' do
  version '2.10.1.4366'
  sha256 '91a38a44e5408b5cd4fb20108fe081d383c3eba6371bf0de834bc20f71e5c116'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'
  license :commercial

  app 'VyprVPN.app'
end

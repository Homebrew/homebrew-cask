cask :v1 => 'vyprvpn' do
  version '2.6.1.2422'
  sha256 '6097c9660fcc496bbaa77bc870ff2483aa92c7ce4bea409fb98c8b635bac2710'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  homepage 'http://www.goldenfrog.com/vyprvpn'
  license :commercial

  app 'VyprVPN.app'
end

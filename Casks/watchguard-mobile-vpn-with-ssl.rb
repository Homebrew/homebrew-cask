cask "watchguard-mobile-vpn-with-ssl" do
  version "12.5.3,615421"
  sha256 "b8a4f9ce908f19df6122fdf24445fdb233d812f2f6b5f08261ca2e4cca0c3784"

  url "https://cdn.watchguard.com/SoftwareCenter/Files/MUVPN_SSL/#{version.csv.first.dots_to_underscores}/WG-MVPN-SSL_#{version.csv.first.dots_to_underscores}.dmg"
  name "WatchGuard Mobile VPN with SSL"
  homepage "https://www.watchguard.com/"

  pkg "WatchGuard Mobile VPN with SSL Installer V#{version.csv.second}.mpkg"

  uninstall pkgutil: "com.watchguard.*",
            delete:  [
              "/Applications/WatchGuard/Uninstall WG SSL VPN.app",
              "/Applications/WatchGuard/WatchGuard Mobile VPN with SSL.app",
            ]
end

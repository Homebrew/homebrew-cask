cask "tailscale" do
  version "1.26.0"
  sha256 "16dd0f68f736ed76e46bc75e95bc86c7da4da811da08e2079fcc03aeceeec4c7"

  url "https://pkgs.tailscale.com/stable/Tailscale-#{version}-macos.zip",
  name "Tailscale"
  desc "Mesh VPN based on Wireguard"
  homepage "https://tailscale.com"

  app "Shuttle.app"
  
  uninstall login_item: "Tailscale" 
  
  zap trash: [
    'Library/Tailscale',
    '~/Library/Group Containers/W5364U7YZB.io.tailscale.ipn.macsys',
    '~/Library/Containers/io.tailscale.ipn.macsys.share-extension',
    '~/Library/Containers/io.tailscale.ipn.macsys',
    '~/Library/Application Scripts/W5364U7YZB.io.tailscale.ipn.macsys',
    '~/Library/Application Scripts/io.tailscale.ipn.macsys.share-extension',
    '~/Library/Application Scripts/io.tailscale.ipn.macsys',
    ]

end

cask "tailscale" do
  version "1.26.0"
  sha256 "16dd0f68f736ed76e46bc75e95bc86c7da4da811da08e2079fcc03aeceeec4c7"

  url "https://pkgs.tailscale.com/stable/Tailscale-#{version}-macos.zip",
  name "Tailscale"
  desc "Mesh VPN based on Wireguard"
  homepage "https://tailscale.com"

  app "Shuttle.app"

end

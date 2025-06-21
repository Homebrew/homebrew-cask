cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2"
  sha256 arm:   "90c745636a5a7155eaaf7ec29a7e6074d6bc614b6f48c578314e48ebcd6e20c4",
         intel: "50566212f4611b49f433934d595ccf113f210d8d69a5ad5225e2cc931740cf62"

  url "https://github.com/TurboVNC/turbovnc/releases/download/#{version}/TurboVNC-#{version}-#{arch}.dmg",
      verified: "github.com/TurboVNC/turbovnc/"
  name "TurboVNC"
  desc "Remote display system"
  homepage "https://www.turbovnc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "TurboVNC.pkg"

  uninstall script:  {
              executable: "/opt/TurboVNC/bin/uninstall",
              sudo:       true,
            },
            pkgutil: "com.virtualgl.turbovnc"

  # No zap stanza required
end

cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.1"
  sha256 arm:   "e9d18947a598af2e7be1047f17baa21ff832312feca4309cb2f8247ccc435358",
         intel: "6fe2404f545c0d4792221d831440215dea73d8af8acd34e97d74b35dfda0fd78"

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

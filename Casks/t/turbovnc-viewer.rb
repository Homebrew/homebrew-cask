cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3"
  sha256 arm:   "385bd59c20546d89fa01a6aff18d5247d7899ff745b75a39a320eace15b3395c",
         intel: "eb1611f526f5e9080e869ea1726b45c819b740fb81660a669776a21b999ea45a"

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

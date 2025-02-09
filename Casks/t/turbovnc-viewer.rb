cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.4"
  sha256 arm:   "a8de81ee24e265c867167b482c9476d2385a07b8de703702a6583d1ddbb0709a",
         intel: "1df2b5f340bc6e621c251572f3940426c412b215a89aa4f55190899b9ef1386c"

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

cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.1"
  sha256 arm:   "8d285f7bc00d30c0ace104b1d71b5ba4eb8bc2a561c71d8b7a26f2798f7d5db3",
         intel: "7fc670c9110e05661c7be14438c919f44cb1515124f7daa47f5d7166b53f666d"

  url "https://github.com/TurboVNC/turbovnc/releases/download/#{version}/TurboVNC-#{version}-#{arch}.dmg",
      verified: "github.com/TurboVNC/turbovnc/"
  name "TurboVNC"
  desc "Remote display system"
  homepage "https://www.turbovnc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "TurboVNC.pkg"

  uninstall script:  {
              executable: "/opt/TurboVNC/bin/uninstall",
              sudo:       true,
            },
            pkgutil: "com.virtualgl.turbovnc"

  # No zap stanza required
end

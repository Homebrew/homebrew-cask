cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.2"
  sha256 arm:   "ff43c9d6e9251cb960f43cb959257db31838a8e98b727328a1ff3f31ae917044",
         intel: "a34de10b9b98e4eae146c0ad7b428906a3d1bcb44d0190d84325996212487a80"

  url "https://github.com/TurboVNC/turbovnc/releases/download/#{version}/TurboVNC-#{version}-#{arch}.dmg"
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

  zap :not_required
end

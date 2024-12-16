cask "zoom-hider" do
    version "1.2.0"
    sha256 "ed3761b7f086f49f14d49b376a7e2fa660d39e720a7fdaf9ec8b646c14fae2a1"

    url "https://github.com/FuzzyIdeas/ZoomHider/releases/download/v#{version}/ZoomHider-#{version}.dmg"
    name "Zoom Hider"
    desc "Utility to hide the Zoom floating screen sharing controls quickly"
    homepage "https://lowtechguys.com/zoomhider/"

    livecheck do
      url :url
      regex(/^v?(\d+(?:\.\d+)+)$/i)
    end

    app "ZoomHider.app"

    zap trash: [
      "~/Library/Application Support/ZoomHider",
      "~/Library/Preferences/com.fuzzyideas.ZoomHider.plist",
    ]
  end

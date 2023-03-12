cask "x-moto" do
  version "0.6.2"
  sha256 "40818cff5020b8b962f680ef7f99f6cce26b3ff1da6775bba39313461df62d44"

  url "https://github.com/xmoto/xmoto/releases/download/v#{version}/xmoto-#{version}-macos.dmg",
      verified: "github.com/xmoto/xmoto/"
  name "X-Moto"
  desc "2D motocross platform game"
  homepage "https://xmoto.tuxfamily.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "xmoto.app", target: "X-Moto.app"

  zap trash: "~/Library/Saved Application State/net.sourceforge.xmoto.savedState"
end

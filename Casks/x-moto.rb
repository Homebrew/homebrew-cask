cask "x-moto" do
  version "0.6.1"
  sha256 "36f85f4bc51703b555af8cd05ef78a9ca332383fc0641ed16ee88c89bd026f1f"

  url "https://github.com/xmoto/xmoto/releases/download/#{version}/xmoto-#{version}.dmg",
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
end

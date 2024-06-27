cask "tvrenamer" do
  version "0.8"
  sha256 "fa250e1641d473d5ece9959c8f3091ab18ad9eddb5a6bccb062212c84cc6aca8"

  url "https://github.com/tvrenamer/tvrenamer/releases/download/v#{version}/TVRenamer-#{version}-osx64.zip",
      verified: "github.com/tvrenamer/tvrenamer/"
  name "TVRenamer"
  desc "Utility to rename TV episodes from TV listings"
  homepage "https://www.tvrenamer.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TVRenamer-#{version}.app"

  caveats do
    depends_on_java
    requires_rosetta
  end
end

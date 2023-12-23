cask "tuist" do
  version "3.36.4"
  sha256 "ea3d7d65e530ae61ef6fedfbe7ff716e112bb80c4443bae0e6c614966d1c57fa"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

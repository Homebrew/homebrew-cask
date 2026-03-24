cask "tuist" do
  version "4.165.0"
  sha256 "d92f83114509494433f8c968c640b914443f6a26f252c9a5a5d472456140d0a3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

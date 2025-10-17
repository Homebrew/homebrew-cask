cask "tuist" do
  version "4.88.0"
  sha256 "ece9f576f53213df541e1732953bf956477e3d03ca83a8a3166e1f7b117202c1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

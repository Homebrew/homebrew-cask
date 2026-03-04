cask "tuist" do
  version "4.155.0"
  sha256 "348aa2e8fcff20896230bab1e781c43ee8391e351ce2b6e5e139eb4713c7de58"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

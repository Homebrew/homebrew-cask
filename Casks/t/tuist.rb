cask "tuist" do
  version "4.153.1"
  sha256 "948f110640d97d5673587ce983f14acd8d3f67592450d3302c2e8facb896eb26"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

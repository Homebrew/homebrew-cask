cask "tuist" do
  version "4.91.1"
  sha256 "5a0a2876d84ba4d831b1d3a3e0a97d2df8f3d7a67fd3e7fb9c49321d185aaa47"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

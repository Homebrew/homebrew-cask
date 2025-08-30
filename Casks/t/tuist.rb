cask "tuist" do
  version "4.65.5"
  sha256 "5e10862eb41dd7fcf15c463ec57904f6e0bd52daefec803e9152af2b26c0c4b6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

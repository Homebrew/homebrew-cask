cask "tuist" do
  version "4.148.2"
  sha256 "44e1879f61567ab64bda3b3d404c5c895e77d99a2d10177f5981c00dbc0ce611"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.55.5"
  sha256 "137deacd09e006637a05a5859ab7ed31adae10039f02d2f9cacc488f00cf2092"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

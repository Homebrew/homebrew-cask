cask "tuist" do
  version "4.172.1"
  sha256 "c23437851af6e570967285a0f87793185b5e411162b714d3e34a1443611f792b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

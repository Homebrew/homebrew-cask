cask "tuist" do
  version "4.122.0"
  sha256 "a1b2d0287e483eb0cb4bf33918aca80faf1cbfb31a88e7b19c5a6c3a4b028596"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

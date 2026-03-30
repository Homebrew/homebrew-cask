cask "tuist" do
  version "4.171.0"
  sha256 "0109d364c68f73cc0e48921ba72ada6038e4e593ee93f86e52d6e0a5243ac25c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

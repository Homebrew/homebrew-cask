cask "tuist" do
  version "4.109.1"
  sha256 "910e284cf980731e9173446dafc6579a815d416c4de221c41441373b06e29e2e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

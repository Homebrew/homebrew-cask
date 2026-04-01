cask "tuist" do
  version "4.173.0"
  sha256 "5a0447cf187b70299c346d95e9615b086f5645ff25406bdbbc87e81d538adc82"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

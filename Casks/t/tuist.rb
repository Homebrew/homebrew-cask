cask "tuist" do
  version "4.182.1"
  sha256 "6f575189154bd7f94958bb4c21d5646be4e58d4d966254ecfe705783a0f7387a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.130.0"
  sha256 "e7c807b29cb03fd9e7d899b8f9e4af1b5f1fe319969da1ddd4d32b70113c1f18"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

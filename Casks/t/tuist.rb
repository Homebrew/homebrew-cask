cask "tuist" do
  version "4.195.7"
  sha256 "f103cd6837b6267b5a7ac76643be59ac1c256aa842345ee2ec4d68d8a1cd51ac"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end

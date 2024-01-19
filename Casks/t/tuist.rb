cask "tuist" do
  version "3.41.0"
  sha256 "c8a2823309210a349a8ea1f003930fe281a6149decff23b7c0ad83e2b2c36ca2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

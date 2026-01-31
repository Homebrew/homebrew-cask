cask "tuist" do
  version "4.134.0"
  sha256 "9b3d4bc214e42a8daf36b989313d19e31d0f0753cf16812248154d35dc022c6b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.47.0"
  sha256 "17eb3bd35e3422973e658002db3c6f8ebfb1c69aca5f1aa278375f6c5fdabdea"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

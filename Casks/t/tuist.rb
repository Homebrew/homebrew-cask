cask "tuist" do
  version "4.49.1"
  sha256 "b272630876a6dc2ecfb266a718663ac408e4c63b7a08af9fcb88e00ec01300e1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

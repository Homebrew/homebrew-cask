cask "tuist" do
  version "4.51.2"
  sha256 "50b5c37479fa736c8142ad3eafa6ccf56bbfa87574003756e3d2c0f00912d80d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

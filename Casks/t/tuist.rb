cask "tuist" do
  version "4.6.0"
  sha256 "ee63f1fe8d150797dd6e9f6a50bc79db0665e54bff878bb589e9733dcc31948e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.161.1"
  sha256 "31b6f611fe8e6ba48b7ef23b4f116b1968f5a567425f5b8493c92fd4558b8b83"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.79.3"
  sha256 "d865d37ca36efa687c1dc199a9aa5ef86a1d0e8901a01139751c9988145419b8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

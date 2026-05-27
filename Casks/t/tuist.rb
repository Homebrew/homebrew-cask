cask "tuist" do
  version "4.195.9"
  sha256 "d9c3cbf6cb5629c538adb0edb72b6191b17641946ba5e878a7491ee357826bb9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end

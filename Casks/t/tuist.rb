cask "tuist" do
  version "4.174.2"
  sha256 "a79e1be4782a11441d62baaa623c9697a9f1b75e5d7da06ff35a949bf2e42457"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

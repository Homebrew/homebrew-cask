cask "tuist" do
  version "4.89.0"
  sha256 "8a4f21b452618d7156645e2e0f925354796d1d505015e4aa467cf49d4e07396b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "3.21.1"
  sha256 "a317db50502f80f834505130d62de193a4dda5722989f3c3f360d05d8ac67642"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

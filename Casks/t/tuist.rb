cask "tuist" do
  version "4.139.1"
  sha256 "883b359f72b2872d1904ae8654bc0fe7c0f50840502b333b5d42189d99d5ef30"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

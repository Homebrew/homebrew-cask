cask "tuist" do
  version "4.116.0"
  sha256 "293953ce5cf9583c4331bc562dbe92ff976f223ece82ca5e2cf5117b35127318"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

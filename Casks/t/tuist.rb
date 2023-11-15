cask "tuist" do
  version "3.33.0"
  sha256 "060f3ad1879e8dad9629a26958ed6e5a1068ec0ce09c2c010876554a35e5bdfe"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.148.4"
  sha256 "61df4ce6a40b6576291fd77888b60cea0e177cf9ae2f95b8c7ef8a92ea1f40f2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

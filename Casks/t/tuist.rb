cask "tuist" do
  version "4.110.1"
  sha256 "6ac33fa99c23fccb845abe11016625419df0eab7765eeb9ad9280aa9c140e802"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

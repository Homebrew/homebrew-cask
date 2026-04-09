cask "tuist" do
  version "4.177.0"
  sha256 "965b929fceb6a1104dd2e64542636b606b5c0fee5f3b04b00bca06e426e42bee"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

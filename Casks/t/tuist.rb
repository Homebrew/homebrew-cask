cask "tuist" do
  version "4.97.1"
  sha256 "5f96bd859c1513ac40e9be4e57146966e8d4a84e811899d5db391c8ac2733de6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

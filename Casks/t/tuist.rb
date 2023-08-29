cask "tuist" do
  version "3.24.0"
  sha256 "ae107de4bf7b7b9b50ec07608b37e3fb2ca1aca272ee1bb542d1ad4fa2ad8212"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

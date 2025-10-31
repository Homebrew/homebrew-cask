cask "tuist" do
  version "4.95.1"
  sha256 "ada2200a159568f552a000dfd56ea7dfb36890df466eb429290ffd047e86a109"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.65.7"
  sha256 "2231a207002eb0407e102e31ee627be67b7be92a9815eb349915d6f07c16c13a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

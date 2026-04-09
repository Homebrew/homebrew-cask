cask "tuist" do
  version "4.176.4"
  sha256 "9ceaae735d7f9013616c60b3861f9cc27b053ed7072641c4ba63af8f6f3fe6f8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

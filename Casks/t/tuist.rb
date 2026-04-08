cask "tuist" do
  version "4.176.0"
  sha256 "5115fb53cee0ffa4fb5d023afbfcbb468d915c83722aea37c690a5314db427d8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

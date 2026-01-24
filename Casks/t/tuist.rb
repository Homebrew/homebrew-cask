cask "tuist" do
  version "4.131.1"
  sha256 "20a86c15241bb3ecd1df1b9f4b8a429aac174c8cfa3c5a56d80c352555405d23"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

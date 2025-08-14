cask "tuist" do
  version "4.60.0"
  sha256 "f741a3c73d70670cd9c42f92afde36b346ccbd50c37daada3bffb2539aaad892"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

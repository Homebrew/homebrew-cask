cask "tuist" do
  version "4.127.1"
  sha256 "af4b52299cbc0ef91d9ef711ad67321dd92848b1ada6eda4a64a7d6a848cf578"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

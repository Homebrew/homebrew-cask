cask "tuist" do
  version "4.138.0"
  sha256 "119cce24eb363e7834c49316474174b772b1062ae8de93500482001cffe0b5c1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

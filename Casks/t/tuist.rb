cask "tuist" do
  version "4.78.2"
  sha256 "4e316c471d20a27e2540fc552948e9d4e9025be3dbf868a4e59680362c90d64f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

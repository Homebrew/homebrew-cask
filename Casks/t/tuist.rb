cask "tuist" do
  version "4.58.1"
  sha256 "f20f497859c7d482deba483e01c61b047278a69ed60c72430681b3d92ee7e40f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

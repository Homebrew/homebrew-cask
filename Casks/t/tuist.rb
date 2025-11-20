cask "tuist" do
  version "4.105.0"
  sha256 "2317f095cd5086039cb900497678569a1994267ed15fdc47cc08c1229c6fb52f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

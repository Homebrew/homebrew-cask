cask "tuist" do
  version "4.55.6"
  sha256 "10400d94f1eed5df5b1232c5ea0bf4a801914f82844d5fb59e90f66243a92c1f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

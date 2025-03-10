cask "tuist" do
  version "4.44.1"
  sha256 "ce77df6b712faa2fe549391b3831fd90cefbc0505c6c52b64cde8d50fac3c66e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

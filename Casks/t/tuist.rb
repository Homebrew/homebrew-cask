cask "tuist" do
  version "3.35.1"
  sha256 "cec8caf60d22e31bf1d14c1a00a6c2db97824933e6251e85888dafef469794aa"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

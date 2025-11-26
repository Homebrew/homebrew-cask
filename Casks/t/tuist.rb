cask "tuist" do
  version "4.108.1"
  sha256 "a510b19f62bdaf7f964fa1ba47d7255b94431dae5b3a7ed5d421fe3614655486"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

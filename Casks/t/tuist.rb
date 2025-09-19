cask "tuist" do
  version "4.78.0"
  sha256 "260368dcc3465dffee1ccaf17e4cf725ff6b0c5256c7d157a3d4090b7154ae98"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

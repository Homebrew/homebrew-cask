cask "tuist" do
  version "4.2.3"
  sha256 "5df80540a0e9c6aaea0e077721f0b6ec9f5978447b4e4e124e48fbbde648d4ff"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

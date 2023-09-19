cask "tuist" do
  version "3.27.0"
  sha256 "a76187c5d1dafd0d6fec03927ff3d8a8c17164d2dff6ee9a6743a0a17067526c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.174.0"
  sha256 "772dd9ea69d743d219bf4f639cbf39c8e4f2171d12574c2002bed04894ff3fe5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

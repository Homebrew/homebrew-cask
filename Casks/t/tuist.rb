cask "tuist" do
  version "4.133.0"
  sha256 "24b45518ac3e15d4afe35dce0879f6b8150ea4a42908d828d4609e50e98144ec"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

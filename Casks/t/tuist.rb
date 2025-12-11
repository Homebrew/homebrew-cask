cask "tuist" do
  version "4.114.0"
  sha256 "b10cbca69ec7c6f1e6ebe20a79a3d6f5c8599c0b322f6d0b04f214cfd374a973"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

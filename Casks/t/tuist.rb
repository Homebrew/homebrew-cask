cask "tuist" do
  version "4.142.1"
  sha256 "512c096462e031996d29df38867c46987778c11cbc3250c5ff1a869ce7cc730f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

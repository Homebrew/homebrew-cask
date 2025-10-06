cask "tuist" do
  version "4.82.1"
  sha256 "69f1b1f68f3c851b9066758269924e54f8da444805eb10bab5ee9122c6fe5eec"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.154.0"
  sha256 "5e5ad26ca02929290de9ff18ccaef08f6ed20cc66e96d136ac693fdbe3bd1765"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

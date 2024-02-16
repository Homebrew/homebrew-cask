cask "tuist" do
  version "4.2.4"
  sha256 "bff480088a7abc87b0445d6bb3c0992039a3e81a3aa58456035827e9ba1a7147"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

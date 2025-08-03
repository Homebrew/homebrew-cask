cask "tuist" do
  version "4.57.1"
  sha256 "726a87b039fe49be4d07b00e17d50730f5ae863eec8477ca8f02f60750dacafd"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

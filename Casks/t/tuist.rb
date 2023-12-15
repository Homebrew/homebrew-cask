cask "tuist" do
  version "3.36.0"
  sha256 "3eaa5d0e472d6176f8b652897ce32a192ba6acf88507b257b7153b694ffb77b5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "3.39.0"
  sha256 "793209450ee86613418d39fe9844a5b39365ff53fee211cfeaa2487c92c17571"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

cask "tuist" do
  version "4.21.0"
  sha256 "b58c3fb3103571826b9f56abd643e109f298be70b8a1a8ccd5406556bdc7b708"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

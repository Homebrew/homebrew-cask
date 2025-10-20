cask "tuist" do
  version "4.88.1"
  sha256 "ceeb0fe41ac47e20624366a7ba64acbe785ed4b7d07a830fe55a9ddc0a431fe8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

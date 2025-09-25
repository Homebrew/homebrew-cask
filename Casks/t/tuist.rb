cask "tuist" do
  version "4.79.4"
  sha256 "5473d60079b0d873e6709bac4924f4c82993db8008c83ab04c271073c77b279c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

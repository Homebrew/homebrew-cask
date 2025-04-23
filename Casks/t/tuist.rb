cask "tuist" do
  version "4.48.2"
  sha256 "0f506c997429e84734fb9285e6f5c925dd1348339b98b73ca350398075c0fb52"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

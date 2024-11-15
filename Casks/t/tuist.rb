cask "tuist" do
  version "4.34.3"
  sha256 "dde96ebdcdc6a820122b98836d4cb84ddf96f10b15127edf51ae71048f6aa5e9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

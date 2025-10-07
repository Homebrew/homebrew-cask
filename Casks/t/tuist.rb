cask "tuist" do
  version "4.83.0"
  sha256 "5980ec461c0c80bd472f703bcbd9db29ea013bf79ca491360197e66f43d45da6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end

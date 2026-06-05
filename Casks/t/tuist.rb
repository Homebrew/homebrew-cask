cask "tuist" do
  version "4.195.17"
  sha256 "6089427fa649ccc355dcf052a65764ced6f54de2a649f2983bf30e50c40b8afc"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end

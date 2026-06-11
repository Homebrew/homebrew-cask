cask "tuist" do
  version "4.199.2"
  sha256 "11e407dd8bf755c7b18dba708bf02fd98bdc43052adf1d767aa877a3e449eb1e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end

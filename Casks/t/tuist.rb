cask "tuist" do
  version "4.216.4"
  sha256 "942c90ae56ca3decdb75eaaf5e8165e15903a3b063cf5748ccad735bdf386fd0"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end

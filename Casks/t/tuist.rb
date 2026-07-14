cask "tuist" do
  version "4.202.2"
  sha256 "cb2b4dbaeecea5b12650e5ff93d16bb287d8288e92fe0aac73fd9009cb6646e4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
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

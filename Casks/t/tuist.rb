cask "tuist" do
  version "4.216.7"
  sha256 "e1363ea2b43513824c6e24d03ef7bd75fb1c05fa4d72a0cae393c2e3e9e42b8d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip"
  name "Tuist"
  desc "Build caching and analytics tool"
  homepage "https://tuist.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end

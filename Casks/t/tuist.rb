cask "tuist" do
  version "4.218.4"
  sha256 "b34fd5135a7b5b6af04d6667148fcf0fd9bfaf60fea2cb8a15bc8fe84cda9812"

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

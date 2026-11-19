cask "tuist" do
  version "4.218.1"
  sha256 "b2b61bf6222d5eec82ef496ffaeb1755dbfb50f7fc2cc182ced2d268e7e0cdc3"

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

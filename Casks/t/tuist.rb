cask "tuist" do
  version "4.218.2"
  sha256 "3d1c06e7e5a393b73926702b6b6745c5b73adc8d41dd4efe1926e6a03cbd3332"

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

cask "tuist" do
  version "4.218.5"
  sha256 "5a5431cadf2c276ed559f4cacc38748128307d224d3472bbef04e546c8952d39"

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

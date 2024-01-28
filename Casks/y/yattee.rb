cask "yattee" do
  version "1.5.1"
  sha256 "46def4264ad5f8d5dfdf38ff0f503e38e1a62e2c510059960b0c292ec3dc1e62"

  url "https://github.com/yattee/yattee/releases/download/v#{version}/Yattee-#{version}-macOS.zip"
  name "Yattee"
  desc "Alternative and privacy-friendly YouTube frontend"
  homepage "https://github.com/yattee/yattee"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Yattee.app"

  zap trash: [
    "~/Library/Application Scripts/stream.yattee.app",
    "~/Library/Containers/stream.yattee.app",
  ]
end

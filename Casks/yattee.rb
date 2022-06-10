cask "yattee" do
  version "1.3.4"
  sha256 "7bd98dbf26f3511abcd5b812a6998b64e6543ea312949a8ac3f41ae017cd69d2"

  url "https://github.com/yattee/yattee/releases/download/v#{version}/Yattee-#{version}-macOS.zip"
  name "Yattee"
  desc "Alternative and privacy-friendly YouTube frontend"
  homepage "https://github.com/yattee/yattee"

  depends_on macos: ">= :big_sur"

  app "Yattee.app"

  zap trash: [
    "~/Library/Application Scripts/stream.yattee.app",
    "~/Library/Containers/stream.yattee.app",
  ]
end

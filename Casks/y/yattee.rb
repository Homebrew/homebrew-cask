cask "yattee" do
  version "1.5"
  sha256 "e0dd52567c44dd94c7e4cbc360cc1abde49a3980df39eed858ea38bcfa1c5300"

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

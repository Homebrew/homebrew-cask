cask "yattee" do
  version "1.3.3"
  sha256 "7c7ed8ce57720a43826a0a7d8c4b55ebb0ca1ef312dd1e2e6330ce74792a31c4"

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

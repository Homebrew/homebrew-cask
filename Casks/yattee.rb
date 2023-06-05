cask "yattee" do
  version "1.4.4"
  sha256 "4384c1397eabb6677f56999bdd9ed1757196fae0e1e398a80fff5ca2d80e3957"

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

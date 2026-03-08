cask "yandextelemost" do
  version "2.27.11,7730"
  sha256 :no_check

  url "https://telemost.yandex.com/download-desktop"
  name "Yandex Telemost"
  desc "Yandex video calls and meetings platform"
  homepage "https://telemost.yandex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :big_sur"

  app "Yandex.Telemost.app"

  zap trash: [
    "~/Library/Application Support/Yandex.Telemost",
    "~/Library/Preferences/ru.yandex.Telemost.plist",
  ]
end

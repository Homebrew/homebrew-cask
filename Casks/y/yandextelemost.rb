cask "yandextelemost" do
  version :latest
  sha256 :no_check

  url "https://telemost.yandex.com/download-desktop"
  name "Yandex Telemost"
  desc "Yandex video calls and meetings platform"
  homepage "https://telemost.yandex.com/"

  depends_on macos: ">= :big_sur"

  app "Yandex.Telemost.app"

  zap trash: [
    "~/Library/Application Support/Yandex.Telemost",
    "~/Library/Preferences/ru.yandex.Telemost.plist",
  ]
end

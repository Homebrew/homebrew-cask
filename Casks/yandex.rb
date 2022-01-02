cask "yandex" do
  arch = Hardware::CPU.intel? ? "" : "?arch=arm64"

  version "21.11.0.2054,0.2054"
  sha256 :no_check

  url "https://browser.yandex.ru/download#{arch}"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Yandex.app"
end

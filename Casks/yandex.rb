cask "yandex" do
  arch = Hardware::CPU.intel? ? "" : "&arch=arm64"

  version "21.11.0.2054,0.2054"
  sha256 :no_check

  url "https://browser.yandex.ru/download/?os=mac#{arch}&full=1"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  livecheck do
    url "https://browser.yandex.ru/download/?os=mac&full=1"
    strategy :extract_plist
  end

  auto_updates true

  app "Yandex.app"
end

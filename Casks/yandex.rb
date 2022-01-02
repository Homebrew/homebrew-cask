cask "yandex" do
  arch = Hardware::CPU.intel? ? "" : "?arch=arm64"

  version :latest
  sha256 :no_check

  url "https://browser.yandex.ru/download#{arch}"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  app "Yandex.app"
end

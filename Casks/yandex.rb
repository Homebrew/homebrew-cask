cask "yandex" do
  arch = Hardware::CPU.intel? ? "" : "?arch=arm64"

  version "21.3.3"
  sha256 :no_check

  url "https://browser.yandex.ru/download#{arch}"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  livecheck do
    url :homepage
    regex(/browserVersion":"(\d+(?:\.\d+)+)"/i)
  end

  app "Yandex.app"
end

cask "yandex" do
  arch arm: "&arch=arm64"

  version "24.7.1"
  sha256 :no_check

  url "https://browser.yandex.ru/download/?os=mac#{arch}&full=1",
      user_agent: :fake
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  livecheck do
    url :url
    regex(/(\d+)_(\d+)_(\d+)/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map do |match|
        "#{match[0]}.#{match[1]}.#{match[2]}"
      end
    end
  end

  auto_updates true

  app "Yandex.app"

  zap trash: [
    "~/.yandex",
    "~/Library/Application Support/Yandex",
    "~/Library/Caches/Yandex",
    "~/Library/Preferences/ru.yandex.desktop.yandex-browser.plist",
    "~/Library/Saved Application State/ru.yandex.desktop.yandex-browser.savedState",
  ]
end

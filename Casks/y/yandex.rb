cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "26.6.3.910,113861"
    sha256 "c44b911acab659bb6ec4a41f7863c93366991c1f87e50247a46e689c633a008d"
  end
  on_intel do
    version "26.6.3.908,113835"
    sha256 "0a3e3d7264493919592f1d1eb57b67a0b34093855346e1c2e61a3273e5a88bb1"
  end

  url "https://download.cdn.yandex.net/browser/update/#{version.csv.first.dots_to_underscores}_#{version.csv.second}_m_s_r/yandex.dmg",
      verified: "download.cdn.yandex.net/"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  livecheck do
    url "https://api.browser.yandex.ru/update-info/browser/yandex/mac-yandex.xml?manual=yes&version=0"
    regex(%r{/update/v?(\d+(?:[._-]\d+)+)[._-](\d+)}i)
    strategy :xml do |xml, regex|
      url = xml.elements["//item/guid#{arch}"]&.text&.strip
      match = url.match(regex) if url
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Yandex.app"

  zap trash: [
    "~/.yandex",
    "~/Library/Application Support/Yandex",
    "~/Library/Caches/Yandex",
    "~/Library/Preferences/ru.yandex.desktop.yandex-browser.plist",
    "~/Library/Saved Application State/ru.yandex.desktop.yandex-browser.savedState",
  ]
end

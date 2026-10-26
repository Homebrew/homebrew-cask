cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "26.10.0.1852,119350"
    sha256 "9fb61c68e4bd5bddeb3c30fdeddb746e4e9b4463f7333d3d6fac26cd6856a138"
  end
  on_intel do
    version "26.10.0.1855,119363"
    sha256 "cc15efd7b4a825af1ef9c90019e5415e5f0afff8c43dd9b4b50b4bd93d7eb222"
  end

  url "https://download.cdn.yandex.net/browser/update/#{version.csv.first.dots_to_underscores}_#{version.csv.second}_m_s_r/yandex.dmg"
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

  uninstall quit: "ru.yandex.desktop.yandex-browser"

  zap trash: [
    "~/.yandex",
    "~/Library/Application Support/Yandex",
    "~/Library/Caches/Yandex",
    "~/Library/Preferences/ru.yandex.desktop.yandex-browser.plist",
    "~/Library/Saved Application State/ru.yandex.desktop.yandex-browser.savedState",
  ]
end

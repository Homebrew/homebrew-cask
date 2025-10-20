cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "25.8.5.892,90215"
    sha256 "2c5b45a850be9d7065bd39edb4d78adb440db1ad0ccc44e22accbcb68be7d67e"
  end
  on_intel do
    version "25.8.5.890,90226"
    sha256 "d7fa053ec39779258bff4bc7d7e47ca4de37515feb08ed35c6c10101f15c1758"
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
  depends_on macos: ">= :big_sur"

  app "Yandex.app"

  zap trash: [
    "~/.yandex",
    "~/Library/Application Support/Yandex",
    "~/Library/Caches/Yandex",
    "~/Library/Preferences/ru.yandex.desktop.yandex-browser.plist",
    "~/Library/Saved Application State/ru.yandex.desktop.yandex-browser.savedState",
  ]
end

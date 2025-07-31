cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "25.6.3.358,84911"
    sha256 "16d1ffa642badce568fa05356f02b564f2c140f942c099cccf22353629db0ee9"
  end
  on_intel do
    version "25.6.3.357,84908"
    sha256 "f03b8c7b4e7cb5fe0e3b1abb22c771af97ae0ef9375aa7251e38be14c1feb44a"
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

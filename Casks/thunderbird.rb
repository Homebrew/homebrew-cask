cask "thunderbird" do
  version "102.7.2"

  language "cs" do
    sha256 "4fe02a50f166619b65eaee0617d79a2efd1e0af3245c1d911ab7340ea168ab8e"
    "cs"
  end
  language "de" do
    sha256 "98d966efcd38256ba3ae11a5d5c786c9231ecf1a15e4b402ffe4e8f527d22b44"
    "de"
  end
  language "en-GB" do
    sha256 "783e416bee3cb4832c5199b7016ecfe5f98fefb028733eb34f00551e2293a3ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f185604bb705e2a15637b59154d805038ae9b6519a7b9fdb01f96f0a30a97ebe"
    "en-US"
  end
  language "fr" do
    sha256 "d69d8a3f3ffff7b5508cf7b64d22f43de6ea99d4ea9ff56a201c3ddbeeff3b8a"
    "fr"
  end
  language "gl" do
    sha256 "6a98e3d7301c0cd15e0f57771e486a83f3bed21b61588ee81e8ac3cf01eec943"
    "gl"
  end
  language "it" do
    sha256 "a620f4bb00cc27ad847d0b87109516d22a293ce4b321c614de120598630634fe"
    "it"
  end
  language "ja" do
    sha256 "add8020aacea6602807c37368d69c0f466d2f073489619a21dfa4c8095074bbc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "43fc96fd80523d749d727144c859355bf688822b4b8b472b93c666b8a8f30dec"
    "nl"
  end
  language "pl" do
    sha256 "69d478d817d45d1f90f76649a230ae2d3a43fdeb4a85d6b8feb6cf58c7414eb5"
    "pl"
  end
  language "pt" do
    sha256 "f52f98ac76ea132e96403dc9c0bb0dd9c101f00e2431e8205ceac0206c0fc665"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f523c1bf22f263868753d67f7ce2256efa70703f3acce530161865974314da4a"
    "pt-BR"
  end
  language "ru" do
    sha256 "13e99db09ef7895ff4dc4e2fbad829c43812f8bb58c2dad63b884813e21fa10c"
    "ru"
  end
  language "uk" do
    sha256 "8a3c11f59b4aad0ea83a44dde70339b5db5664ab77520a6c0743c6beba8666c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "04f582b4551114723d6bd80e6d556d769eb6a256d8330d01e08957ce0da2a70d"
    "zh-TW"
  end
  language "zh" do
    sha256 "1994f2588ccdd4bb9502351bd7387e00a376ef99dd4140788efc407168da52ff"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url "https://download.mozilla.org/?product=thunderbird-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end

cask "thunderbird" do
  version "102.9.0"

  language "cs" do
    sha256 "8336fedbab025bc7681e9e76d48f5732316b68fc3ab675eb2fb05ef15ade2054"
    "cs"
  end
  language "de" do
    sha256 "3a0c5199931071d779c1260d8efc2a4d6bd21e308c1e33f785e31ea084efce17"
    "de"
  end
  language "en-GB" do
    sha256 "033563b7c06183b829b7985aac359bb6200de084e583353f58700a463aa08325"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ce86a0a224bf85621676fbd820d46d206f15762d6a0eaec17e192dde316c588"
    "en-US"
  end
  language "fr" do
    sha256 "886ab829d44a4d0f0c4effc6eba5829c42127e8db045eff3278fc74754772448"
    "fr"
  end
  language "gl" do
    sha256 "d26ebdfab1189c83f8f4bfba0eb7c25907169edfa7e3501f404b5406a15a1445"
    "gl"
  end
  language "it" do
    sha256 "bdc0db4d180cf0512e7eec0c10338bb71db9b1c1d3aca635c35a60b8eb837304"
    "it"
  end
  language "ja" do
    sha256 "33e5c2ae796bb31e205638f044328f18c2278c6836ef4b528c19c2d56a136ca0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f06845ff1422d97a4d0b39842633a05f11ce41c6e0c48f70cfe184b3eb4000a9"
    "nl"
  end
  language "pl" do
    sha256 "3d221142898794e94eec66dac81eabf9dfb150d3ee173fb066f70d2442672ac0"
    "pl"
  end
  language "pt" do
    sha256 "74c52cc5066442e343833f687044a6e82c369bb57f544100e7a62e85d28c6de9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6d1bd0af6d73e36a0fefec27584bc20a03b97d5571a3bb748d7bbcc063bf4fbd"
    "pt-BR"
  end
  language "ru" do
    sha256 "c87ff5456802c726365e83c341ca95943f77230740288521d2dc56519ebcad97"
    "ru"
  end
  language "uk" do
    sha256 "45d4878cc93d0cb528f6678d752b80e5af352fdf7ad006a122b419e0f22b85a6"
    "uk"
  end
  language "zh-TW" do
    sha256 "080f15bf8d8f22a0a3261724f8d322da9e444491b0da4cc85d8adc36ac7f82d7"
    "zh-TW"
  end
  language "zh" do
    sha256 "418a1932bcd40a4b1c196fda5b5c5d29a25fc298415732cffce520c210db90f9"
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

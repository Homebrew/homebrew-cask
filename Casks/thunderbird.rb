cask "thunderbird" do
  version "102.5.1"

  language "cs" do
    sha256 "ffc886f95de3f4faa0f4cfa27f499695104bd90f436901037b4139a0666329f0"
    "cs"
  end
  language "de" do
    sha256 "89cfa944a5992b7d88b143afeb53ff051a42a97cd26504d9ac47e99f69ee0ea5"
    "de"
  end
  language "en-GB" do
    sha256 "fb8254399579e599c2457909a539e4f6e5edb58e8284380034655e689f32e80b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5a845f42f688a29dc5cf6fefe03281b39d4c0568a5071970ec3dcc88134d96be"
    "en-US"
  end
  language "fr" do
    sha256 "4c12c29bd049843572e49cdfa164beddf1f149dbb463480711314e527668a194"
    "fr"
  end
  language "gl" do
    sha256 "ad94df9c362daeee52f4559058cb29ff8d373d62c02b5a23cefb67ddd87cd84e"
    "gl"
  end
  language "it" do
    sha256 "2ae3cccf0dee1f970334c9ca1703f93a8ffd5b03592da0ec892a7995aa7de50f"
    "it"
  end
  language "ja" do
    sha256 "a44a367724f0491756c507a0563c315c6d3df88bcee7e12f592fc72f11e2953b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9dddb7fcd5eda54206ca2eae53006fe414f2331b0463132ae3ee98d54395f818"
    "nl"
  end
  language "pl" do
    sha256 "51e5c78fb1064d88be25ac672bf270b2b0def201a32e67765bb09fd3f8841604"
    "pl"
  end
  language "pt" do
    sha256 "af767ad16523e18a867b49a4c20ae89b5e174998590d27bb7620d84bb6ade38d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c0c9f128d0a8fd361b1ecdee45adefb651f6bb8e0912c6588ca317f9ff3ae13c"
    "pt-BR"
  end
  language "ru" do
    sha256 "564d5785e30135edb6e4b32d96a09b9f4f797ab67be5a5775cece40535c6d67f"
    "ru"
  end
  language "uk" do
    sha256 "51c3216935950403b0bb381eb335a4b1f3913d8ca5ba99fa4edd7bc2852d49b4"
    "uk"
  end
  language "zh-TW" do
    sha256 "322ab0ca0a9d8b9e7668ad2443c3b5a7f5b14cdced4dfa5f8907f8b5e4de17d5"
    "zh-TW"
  end
  language "zh" do
    sha256 "f0124b2e860afa5d43d7f4d095e9b2973916b471376f3cdabf6d35066edf6c31"
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

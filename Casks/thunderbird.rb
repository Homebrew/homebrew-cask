cask "thunderbird" do
  version "78.8.0"

  language "cs" do
    sha256 "b0916705b8097ba171c5530d6c3d4748d223c07418e7e547676838c92ae9d40d"
    "cs"
  end
  language "de" do
    sha256 "86313ad2a440ad7d1dca69273a7ff7edee5f8bee5f374508fc44e607bbcda7a2"
    "de"
  end
  language "en-GB" do
    sha256 "8f29020d4809efa5021a9ab71e6c3f94cd90fccb91c1cbce6ca2311efbcd4952"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aa63191b7e3e77193c0b02594a67dc1042dfefa9f6de42f30b52efe630776d9c"
    "en-US"
  end
  language "fr" do
    sha256 "197e5439d3dff63db02533ab19a0f88904be5f36ad3bd7f880342e6f5ca5a3af"
    "fr"
  end
  language "gl" do
    sha256 "826719ebe78904df36b75c5de5569e0eb2f76b4a15a7d8e43ff77f10eb8d7ddb"
    "gl"
  end
  language "it" do
    sha256 "9a6cca314615dd3aa74f6e906a71fafa8a0068e245df804ecd36e5a5aca3ad43"
    "it"
  end
  language "ja" do
    sha256 "b6dc105015975f1c93092bf369a9a350965e26310691249dbc81e7dfade001ae"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ae59753b059e7d9d3d37bf28709d73f9f6004920c342d6ed916a556e96c3448f"
    "nl"
  end
  language "pl" do
    sha256 "06c2ae4211e975ac6e457d6ebd60149e48f6672e65cd3a5f7ceccb74a6f257bd"
    "pl"
  end
  language "pt" do
    sha256 "ab3de56218dd97f73b0b837d7ca0a85f2d5dd564c474741e107c809af74919f4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "38eb1c3f1f0163541c7bde991fa6c784ee36f12a593e05400569807b3916e10d"
    "pt-BR"
  end
  language "ru" do
    sha256 "24caa1392dc808958dfff84af514b0f14b49b661dde1798aa2e21e37497bd2c6"
    "ru"
  end
  language "uk" do
    sha256 "c2158a9ed84ffd009d715f5a21493eb4ed1888b9e82193cf6a30064095816a81"
    "uk"
  end
  language "zh-TW" do
    sha256 "c4b896373ddc379bb6211a7e7aa05e270b0ff4abf785697fe9368b20ca85db4a"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc7a82d2f0097c772bc049adac2d2628480adec623eb0c61b9adf892c980cde5"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end

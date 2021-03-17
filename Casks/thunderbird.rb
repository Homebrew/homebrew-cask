cask "thunderbird" do
  version "78.8.1"

  language "cs" do
    sha256 "ac782d4c8099ba30cb6196fb8f98a810627835fdfd2705c7ef8cf5b3c2b066a1"
    "cs"
  end
  language "de" do
    sha256 "3f8960a40076f3fd944001337874abe7c3e6fffafecdcf96633011762896d569"
    "de"
  end
  language "en-GB" do
    sha256 "563e6286511137693a78115599e866b1c02bf69d1bfa4685c774ecccd4eb83af"
    "en-GB"
  end
  language "en", default: true do
    sha256 "40c117f99f0965b2a5b36776f9d15fce201bf1ae03bb58c402b1beba832b94f8"
    "en-US"
  end
  language "fr" do
    sha256 "e84b8e1adc5ca0f9f5914b43db5859c1c54b6e4eaa5520fde9d2e8e0763e7c93"
    "fr"
  end
  language "gl" do
    sha256 "4a979173a1a71eb74ab8a845a06c13ecefa6dbbe118c38b3db3d14b15f440fcd"
    "gl"
  end
  language "it" do
    sha256 "761608e27fbb98a0028937d71e0d8347890ec1a07925a54993b90988355f31cb"
    "it"
  end
  language "ja" do
    sha256 "4094a49163a22f4db2652fa422f5ed8d3d87952fac761e6dba26e78928cd07a5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2ce79ce7533d9f10d27451832cc156db12ff6b6ba4d6eb72b0ed65249849f9d0"
    "nl"
  end
  language "pl" do
    sha256 "e96729f4e3d569ac6213c0bc6fadebf7d0496b34a7aa2c6d97374dfac7c15dd4"
    "pl"
  end
  language "pt" do
    sha256 "5b259c44c281caa510984ab5b28f820dffdf682d3542280e29213850a14b135a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "850ba9a95dc53a344a436d39e484221363d2d726aaf3c29eb315f515c21a9f7f"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b861d5977e06d15ea697d96476a76ff0ace540374893682ccc885aae94994e4"
    "ru"
  end
  language "uk" do
    sha256 "d16a5b69c44bd33870923e5244aae4b7256f8d3956172871e1e785e185c7ae35"
    "uk"
  end
  language "zh-TW" do
    sha256 "c31f71516eba0887e632754dfded21f53e4d6c094cb6af7919ca0a7c2311d81a"
    "zh-TW"
  end
  language "zh" do
    sha256 "81896b1cbfe00395516623bb49a430d15e1f8df6d70ac7636d50e2450154503c"
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

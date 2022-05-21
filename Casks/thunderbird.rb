cask "thunderbird" do
  version "91.9.1"

  language "cs" do
    sha256 "792c58fcd856741bff6a6ca4ed0f334d0c6f06142707f323268658849487d757"
    "cs"
  end
  language "de" do
    sha256 "77f45cb6c60e41791897ab2c4b45c8fe6700d216f3683a126fa5b2dfc5da9a7f"
    "de"
  end
  language "en-GB" do
    sha256 "2c153f2ecc441a55a8957e1fc74d3803bf6d4bb39c3d05afe2c94da5cad9a866"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b2a85c2a5e308a8a1f55f0e6e8264074ef072f951b024bcd692c7a46e18ae48d"
    "en-US"
  end
  language "fr" do
    sha256 "7bad6ff79ef5c82ed7b0400eacbea6304eda985dfe55cc438b5c5a0d85512cf6"
    "fr"
  end
  language "gl" do
    sha256 "0837bb6a88b314cacffae29238992b63e2b606bb3310f95cc4682e4b039af448"
    "gl"
  end
  language "it" do
    sha256 "00ccc963a24c430f44709a8d3587244f16977e20e060f701a9e07c70f1798f44"
    "it"
  end
  language "ja" do
    sha256 "e32080baf97584353fd33f005fe720c437392b6e39bdcf2075c0f760cabaaf0f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cd6b21eb5c2241d22fa84f560653c1f51b589c5b44865676ccde648269424660"
    "nl"
  end
  language "pl" do
    sha256 "9cdcebf1ac832150fa7e6d81e36745e273cd0e84c20291d1958fdceadf30475a"
    "pl"
  end
  language "pt" do
    sha256 "32bfdc1b7654af65e89cd9bac792d136ed2b1bb76b4d74c2c492b5f678132325"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e8bafbefe5044cbc47a29e7ea80c011a6edd1180e1633897a242673f50ef7f3f"
    "pt-BR"
  end
  language "ru" do
    sha256 "193741f991d94d3a4f9fd8ca31d62ff0c17cadfb308c8b284d886a9d5051da7c"
    "ru"
  end
  language "uk" do
    sha256 "be3656e438111a75973f632227f460cfbe2a652951161db7fd496e9d62b99b8e"
    "uk"
  end
  language "zh-TW" do
    sha256 "f4b0ae7a83c4b7193c88b1d5df7a3b8de2847634700f6822a885f9a0eeae640f"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e00549b0475b076fa8ddad146d195013ac7f021a53fa244957c3b1fc184edef"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/pub/thunderbird/"
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

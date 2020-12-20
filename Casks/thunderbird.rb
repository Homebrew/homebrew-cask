cask "thunderbird" do
  version "78.6.0"

  language "cs" do
    sha256 "4cc94cbdc0b0d0860098d0ecfdcc5499a9478b9f9a19f985590851ee681a709b"
    "cs"
  end
  language "de" do
    sha256 "27c47121737aa788a70e89158f5245c7693f405cfce82aa313460bf35c58f46b"
    "de"
  end
  language "en-GB" do
    sha256 "bd331df6e33ba2ff5239c8234b4e506c5f42329b66f36175bdebbfb10b820307"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b58376858a98662ae547f30066d5f99aeaf8cc8653a78b3da601efb83f0a2450"
    "en-US"
  end
  language "fr" do
    sha256 "370eac062789b29cc2df9af855c78f382c5ee3a0bc6f533384249df6dd60ed3f"
    "fr"
  end
  language "gl" do
    sha256 "e505ea54272d2df387583cb13ea7a9e19ca7701facbf77e3a18aa99b9949630c"
    "gl"
  end
  language "it" do
    sha256 "31cc2fbfbe099e620565a784ab1b2d018bd8e25b943b9e28aec1735904685b21"
    "it"
  end
  language "ja" do
    sha256 "7c8665cbf3ce3d2b2f96a35baedcee741f46bef1b670349f6f79abd4993f15f8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "953d2c305269f0ea16e89197edd6931c7770b0734ccd88a306254c09739fbc00"
    "nl"
  end
  language "pl" do
    sha256 "e185edb8531a49a788488cb99d61dd6906da24aa6a7cf7d14e601af66accd94e"
    "pl"
  end
  language "pt" do
    sha256 "035a6f3038873e0224845d8e0b9a9b29be472633079f818f770a9b584205d656"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4feb5102483c33ed2aa819f68d4dd3de64243fa0adb99b176dcb1cf5940f8aa9"
    "pt-BR"
  end
  language "ru" do
    sha256 "55b9929c863430225001e8b4186440f7944a3530085f1cce3e099547688f386a"
    "ru"
  end
  language "uk" do
    sha256 "a88519e642f4587f4b31ef552937aec6372726f3dba9df943049da0a3bb79d72"
    "uk"
  end
  language "zh-TW" do
    sha256 "1ff7e4883cbff9f0a44d9097886888a8ea96c870fd9791efb4e464e5c603dd05"
    "zh-TW"
  end
  language "zh" do
    sha256 "fa7e19f581991b491a1482e51c2f4b5625ad03713c5ffad44e90c6107424883b"
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

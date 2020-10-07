cask "thunderbird" do
  version "78.3.2"

  language "cs" do
    sha256 "feaf071b3d653fb2da4cc278e7beed225e6a97e2fa6df5238359fd049c51fbfd"
    "cs"
  end
  language "de" do
    sha256 "f60dd158fbca9ad95a4c5582335b313380ee122eb296187b03646562c852429b"
    "de"
  end
  language "en-GB" do
    sha256 "b69adbac27ed84d14a72cc493505742ba2d77bdbda8e97d8b4d6841c1d86b319"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2b5e452fb24ddbdb300098a99279a6d3f6edccb7d8ce4e529d6c853250f11e4d"
    "en-US"
  end
  language "fr" do
    sha256 "a4d39fbf2699040b387a6d9b808017220162bb80f3fa779865275beb86bbff3c"
    "fr"
  end
  language "gl" do
    sha256 "3b527505928974d716a6e314597ae2d2e9c741c799aa87d9e485c609d3940c8b"
    "gl"
  end
  language "it" do
    sha256 "2c3f30554625d3e11c2d0ac2755ddccfe931d35dd6124dcbaf7c262c59a14e2d"
    "it"
  end
  language "ja" do
    sha256 "a8a26a4a957d7a375b033e2168adb77e615de1a8885aa951df8ff26a7e65f02f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bba870b3a38f382735f2f67c169ce8fd6cc6cbdf2eb0dfbc4aaee867dc8445ce"
    "nl"
  end
  language "pl" do
    sha256 "bc702d530df7427a69069b1a7b416a4e794e82b25aca55ab41fcbf5633f64340"
    "pl"
  end
  language "pt" do
    sha256 "94b10fe5612c5690a292dcb87441a069d71c658605bb4f255f29b14c3d9276e1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "13cad4bcc8795016438da0832999754b62f61f715b19bd77d5a0188076828aaf"
    "pt-BR"
  end
  language "ru" do
    sha256 "53b7d829dcea2af1ff28bdac1b83a7d3de4d07b3fe52678dda4ff0d235fa4901"
    "ru"
  end
  language "uk" do
    sha256 "7aa917e79cb1f9902869a1ce46f8e1180ddb5be2cf4207151c399b0d5caf7635"
    "uk"
  end
  language "zh-TW" do
    sha256 "79a911be155e4d240347e9eebcdaaea231bcce638a6b17ef6ddd5263d9720ce9"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2beaaee49464ab5f36b343874d26d9e3b2fed07867680e7d372b8f4128a734c"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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

cask "thunderbird" do
  version "91.6.1"

  language "cs" do
    sha256 "7b206d53439282fffaf71bc958078d6e37462800f64118cd9a362bad06b86fa5"
    "cs"
  end
  language "de" do
    sha256 "b86df3db552dfbd0c4b06e8f23e8a4ac7e1b3ca3c1d1aabd413cf4271e149a5a"
    "de"
  end
  language "en-GB" do
    sha256 "0868ca12f71ee1591b966e0bf17697d0e391929e35165b4f551dd3e39f45ae8f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6fc7263df124506c76cdfd8ea6c1e6d07504dca84bb9406df9b817af99dbcf19"
    "en-US"
  end
  language "fr" do
    sha256 "8bff5c3272f38ad79de175c7aa83e3711df35f6639b2254bbcd5d0558461f942"
    "fr"
  end
  language "gl" do
    sha256 "6f07580cdde306de1ea60e36f08017fadfb9d17a0d2fb74a885d0657bd5084bb"
    "gl"
  end
  language "it" do
    sha256 "87b7234d61ed59873c9b26ad9a83abb7ace5bbf1e0630686e2862cdd6a7c6e70"
    "it"
  end
  language "ja" do
    sha256 "3631c72306e74df59ec99267c187e04c09ab05ed060ad8b6d80457f27e97865a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a1d5a5c337a509573dd3fb7d8c2b600b1709dda70b30900bc5670b12aab42150"
    "nl"
  end
  language "pl" do
    sha256 "0cf8357d9f1c1f8688bcafd244382922e7ae2f292af8c09a330a30d19a6e94b2"
    "pl"
  end
  language "pt" do
    sha256 "cb3d1a596e317de18ebfd4e278567c59b2d5c07f9beae87579940139fb1e942b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5da102cbbce9f4e0036c55afe0304beb6869209abc267c8741710c3104dddb46"
    "pt-BR"
  end
  language "ru" do
    sha256 "e7cb2591d53c94b302d3f85a17f8048e0b3b9ee336e59e6cee2b353951b6cadd"
    "ru"
  end
  language "uk" do
    sha256 "7f5fbf2e1aeb0a02a19c226bfbc7320f38b907c35bf08b91e2c2250a840f981a"
    "uk"
  end
  language "zh-TW" do
    sha256 "49f7fd8ba04e45606e9632ea33d7b28e455a498bc0e37a6f9b6b8deee6a451fb"
    "zh-TW"
  end
  language "zh" do
    sha256 "d298f2ad5afc1d3be925298076059ef29ee8872775d1293e1a978a81a9060e86"
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

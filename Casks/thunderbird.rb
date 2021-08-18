cask "thunderbird" do
  version "91.0.1"

  language "cs" do
    sha256 "a5860faaafbdeb27906611fa3faeb349602c98facedee5c0027700e19c24c910"
    "cs"
  end
  language "de" do
    sha256 "6867ca6f2063b236b5af2290f845b18b3d8c9e5da428de5346f60967c87d5a42"
    "de"
  end
  language "en-GB" do
    sha256 "8111ed6f96f7d5dad9a8d1cc4697465fb88fd488d4ed176acc246f4c9e7437c8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b55e8846ab1b46216c141ba761e0ac2b2a7edb49a9b850ed9c73b16c7d579ec7"
    "en-US"
  end
  language "fr" do
    sha256 "208ecd45fb487be508a54bda837c815f3128b982a5e3973399e490d4d5b9f1c9"
    "fr"
  end
  language "gl" do
    sha256 "f75cb21b0d8679b9047de97fb9e0fb620985704f0eaf8c8e7cf16c58b0330762"
    "gl"
  end
  language "it" do
    sha256 "45c68ba31be9c5534921860a343f80c7ef67445db1d5153f4e3be2357bec577e"
    "it"
  end
  language "ja" do
    sha256 "8b74be59f00bb925a349edf4fe36eb21b95cd2336f90cc0b37638b5c83c390b9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "87ff8b783eebd8a8106d421cb4dbc0eb427992e071ae877a79ea19eab677a3f6"
    "nl"
  end
  language "pl" do
    sha256 "4b26a73ed14adfaab538b02af99f13f1c155d3d100c30dfdc782493de8cc9e27"
    "pl"
  end
  language "pt" do
    sha256 "0996ca103c7728e65e66f1392d3434c7124cd7789308a26694e6a1e7bd8e1b36"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5e1b8f6a70d809c16bf12fe836069ea72af95a363efba827b488af9ee011be00"
    "pt-BR"
  end
  language "ru" do
    sha256 "076a3d2faf160e5bb7f22f502f1e3cb0e67f1666d5b6158f570f86f1971275f1"
    "ru"
  end
  language "uk" do
    sha256 "3bb2d421c0f97b3b9d8bb3621470b5b8f27ec58c32e342b25f36a606907f5189"
    "uk"
  end
  language "zh-TW" do
    sha256 "8962debad74cf095fe56aa4c6d5460c898120852f95f153ffa545fcf767d11aa"
    "zh-TW"
  end
  language "zh" do
    sha256 "ec4eb210c8dfc5b2692a2c07ee29e666f39a9ad517a41b4dd3c2f4b44be835b5"
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

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end

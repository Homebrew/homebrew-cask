cask "thunderbird" do
  version "91.11.0"

  language "cs" do
    sha256 "969cf8900451b7ec837eddcdbfcab86c5595e66d743a28576d8c18e7e2d4e57d"
    "cs"
  end
  language "de" do
    sha256 "2be4f88ed55c5080c0c33a8ada4848122d76bef392249dac4431d6de7f4a0d8f"
    "de"
  end
  language "en-GB" do
    sha256 "952d9b232abbee18334a312868c612ffa61754c942db80f0f211df85be0d295c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "09353e35ba3751d0a379aadc95f8c5b2549f765acac216a8d84df2b9c467838d"
    "en-US"
  end
  language "fr" do
    sha256 "a86ee7bf7b21819974f9f20882dfcfb319865aa3d1c8685c309f7e54676411f8"
    "fr"
  end
  language "gl" do
    sha256 "b69b3121ba4be20bffe72327185254e6990a919184cb76edc5f969f50e9e9934"
    "gl"
  end
  language "it" do
    sha256 "cccfed88d346cbd8a0c1c753d26e18652baa01f7d4d0147cc2d0e8c6d68c3ad8"
    "it"
  end
  language "ja" do
    sha256 "29d8ece7507bab28e88d83fa438dea3c8f9ebbcbe7be303c02e0edb16358a783"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4ec2902fd81e82d6ddbb1c760dfded46a7370ceff8b07a9824816636dd3a75c7"
    "nl"
  end
  language "pl" do
    sha256 "02e3ad7c67fc7c25f95a3c64ddd68fdc276a2003f403df6124f87a864abc8dfd"
    "pl"
  end
  language "pt" do
    sha256 "8230195a2795e145d7425da3aaecdacaffb75dff0fbe2c1e1ff352beebc02c26"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "99fc185753d2ded461eeb47c14dae5b8ae4cb4343d81f1243e6a40de1010569e"
    "pt-BR"
  end
  language "ru" do
    sha256 "b939044a45de0d4064a4ad62aa8d23185f6c0da3991be458337145bb0ee81b1c"
    "ru"
  end
  language "uk" do
    sha256 "8fa981c276c32b8a7e68c9bccc8256d615b42cf90c67ef4cb7c5dd7c03b9dfdf"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0dc8e18db63c0b99adeb52a72e860104232b5079884e99b47443ca776e7e4b2"
    "zh-TW"
  end
  language "zh" do
    sha256 "cb4db13b236a92575884fde34c923ba855377fb7bd1ddebd0621929da2e45f56"
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

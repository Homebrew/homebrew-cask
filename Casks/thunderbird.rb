cask "thunderbird" do
  version "78.5.1"

  language "cs" do
    sha256 "9a2547084aff4f2d7d087613989de2b15b95f69c530a61c3fa588c6e45b0386c"
    "cs"
  end
  language "de" do
    sha256 "09b7f31958a850aaeca7a3d7948849dfc152c4049e4de3f03e444b5683841d7e"
    "de"
  end
  language "en-GB" do
    sha256 "8f1d125a0239163212fc2585a2ced70fe942b96f61708a11c189226097fb1a6b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3cd93d2e4db6365a4e193545f233889065539b2c116c5d3b52c9b4a9d8a1296c"
    "en-US"
  end
  language "fr" do
    sha256 "e04f05a27b8b15daca798d6993b5bdda852f1638173abb622cefaf1d59f57954"
    "fr"
  end
  language "gl" do
    sha256 "fa4643ac6186981329f179c5590478a38b61639451b3a08fd7ff4e2e6c0a6def"
    "gl"
  end
  language "it" do
    sha256 "c3a09d8901fa5ea28da2d31e768e45ea4f64a056396037b89b6c774d4be5aecb"
    "it"
  end
  language "ja" do
    sha256 "a8d6c96b8c334805833a3f84947c69ef147ac1bde3bdaa25f1d20ae4a31a0172"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f8b42b041c91c33da8605ea2f0f97a41d054648fa5b129e0cd62e6650ac5fa77"
    "nl"
  end
  language "pl" do
    sha256 "1be34d2c7da95ed86ac525c73db6f549ae4a3e28ab0978ebd83b3b4c728a6fec"
    "pl"
  end
  language "pt" do
    sha256 "fa195c1dcb1b0d6c7de80e04ae7b0e18975badbfe4b635bb959e2240f1352b90"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "667e366230ff5b4297de8793b2ceca8a2a14bad6207dea79bf6c8498ce3f6023"
    "pt-BR"
  end
  language "ru" do
    sha256 "21e549cb0474aa2cf6f21d70d0d36a724c166a03ed75a38b09a1a8c3de08b238"
    "ru"
  end
  language "uk" do
    sha256 "1f38c6d26091e4d4011faee19287b97124d3c7728b3ca34b420e64c9dbae19c2"
    "uk"
  end
  language "zh-TW" do
    sha256 "122c05ef7a6894ad542f3d65910ac1273d0f60ebb3e13bb3316fc22d565fac8f"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd09151819dff6086d4069c0c3301cccdf4b48946042ba7513df881eef2e9db1"
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

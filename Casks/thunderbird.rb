cask "thunderbird" do
  version "78.2.2"

  language "cs" do
    sha256 "a75003a90cd72a89ef4cd714258e3a94f141a3d9f0432f610abb55b38f935ef0"
    "cs"
  end
  language "de" do
    sha256 "d3ebc2befff450903e03a9544a430f0205b53db0e40a0a5c2d4cf6a09958776f"
    "de"
  end
  language "en-GB" do
    sha256 "fd0ea5c3f2a4999d81922ecd11ca9bb671ef024bc5dfa15a096d447c8fe883a5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bdda5d959abbe07654c8044fd13b66960214c0080512015947875820af6b3339"
    "en-US"
  end
  language "fr" do
    sha256 "506553dfb74307783a69c3c4de8e7f9303937ae47d1029f65adb0d6ad0fd90ef"
    "fr"
  end
  language "gl" do
    sha256 "f078fba6834b1f854a6878e9e3079659de84678c0bf746358a3f4f9bb3acd3f1"
    "gl"
  end
  language "it" do
    sha256 "b3be946b0a56d331ba0037b23fdb47b8f5a6466dae335cc90ab5b3f059509d4a"
    "it"
  end
  language "ja" do
    sha256 "7596d0c8dc5777f1495ad9aadce4016184b74ac3b302208f9a87e05e9952216a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "316ae407f8ac0ca4688e917603234ba033a563c72e9ae564a7a56ca00935234b"
    "nl"
  end
  language "pl" do
    sha256 "3f3ca39255a8457d866f334bf864ee424973ecd0596be4de4a50d54b79c0d066"
    "pl"
  end
  language "pt" do
    sha256 "dd90b2c180bba4c6e9bedf630d4a993cdd3c9f45eda407fec323d73bfd1b356d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "20a847ce9842660f800b3fce7a67a1a62a6bdf35ba7e443767ae1c11416d646b"
    "pt-BR"
  end
  language "ru" do
    sha256 "22a7874301456ea87f0fce76d13303865fd7002d7ade49959e1c7c48e70fa6ae"
    "ru"
  end
  language "uk" do
    sha256 "7c5161ab47176ccdfbb8123ba908677f927382896cee1a4c17e06f74bdc37ac9"
    "uk"
  end
  language "zh-TW" do
    sha256 "c6a4c795528978ddca47818bec48b4c5290862b8afff5a7541fe735b75989321"
    "zh-TW"
  end
  language "zh" do
    sha256 "32026d856af83b2f32bee8508fb1e66fe68067eb0a0a94f64ce28d71daaadc87"
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

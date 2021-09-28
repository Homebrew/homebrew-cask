cask "thunderbird" do
  version "91.1.2"

  language "cs" do
    sha256 "2ca70789a587c2b625d6889f9f6754af7c077834bdd255884fa20a5aeddf3135"
    "cs"
  end
  language "de" do
    sha256 "beb8d07182066fc722dc5c51157ad771d7626950b4f258a1cd1d2a09447d0a35"
    "de"
  end
  language "en-GB" do
    sha256 "3b9bb80c82ad0025ad9c474f56175b680616d71923002d2e249b0c1406ed7b48"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72c186a501a799d19b400481c7285998b45dfe9bc015b8eac6b2fd7f77aa7491"
    "en-US"
  end
  language "fr" do
    sha256 "1b95c14ddf905867b27925849ab6fb8cc2f21ef769924c3a4e12ce8b3251752c"
    "fr"
  end
  language "gl" do
    sha256 "50d8a229eb9866d5d6db6ba86e0155cddee2d4b657c1e6c9a24a1c95116cb28c"
    "gl"
  end
  language "it" do
    sha256 "8478bff960a602e4f2e2a288605a907bd48a274a73fa7ece92119ed7f2bc1199"
    "it"
  end
  language "ja" do
    sha256 "35a9f546a69d880c9caec523bae34ba85812997b009a0b9e4e979db65eba9ae0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8a1a3882a7c7ba44254def4eff93d25f781221220e6ec2212e5537d7a3f97767"
    "nl"
  end
  language "pl" do
    sha256 "77bb0269d793085159f79a4201df2f17eaeb34612b754662710d0c2dd27832ca"
    "pl"
  end
  language "pt" do
    sha256 "1ca1c63128e723512e9ed7d2bf13f6796bbf859c6afdd682b795f92b0e6ed3fd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5d89ea00f17e0ef14b95d3b50380576af2a950779da602e11d4ee8f8a2ee43ac"
    "pt-BR"
  end
  language "ru" do
    sha256 "f445003546de89f48fa4337b9984c9fa3c0eb9e8c5e2b1edd248709fda7a8e16"
    "ru"
  end
  language "uk" do
    sha256 "97247eae78994d90faae90537c3647fe5e7505487a5d7beb427ccf58313b8839"
    "uk"
  end
  language "zh-TW" do
    sha256 "ca109a586022b47f796cb5f14907743feb0c4dce2c272c64fae8c4e8caaf256c"
    "zh-TW"
  end
  language "zh" do
    sha256 "2ad7515199f1c4e73f33dde12f04f554fb6e3add7707af976c2f4c7105ed8955"
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end

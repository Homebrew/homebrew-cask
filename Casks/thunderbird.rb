cask "thunderbird" do
  version "102.6.1"

  language "cs" do
    sha256 "0cdee14976cc1e92332502f8a4ff6fd3ed93fa95a26ae9fd714a163a73813094"
    "cs"
  end
  language "de" do
    sha256 "943f976836b54803fef9c0f04127de0a50638d0eb517cea0cb9594073c866be8"
    "de"
  end
  language "en-GB" do
    sha256 "66206d2ecf26ecb953952c738f7cd99aacc3c8a717d8a9c0488a5635263056ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c07c8ff414b9f485d18a922e2f22fbee3049de43db6d3c89bd4a7a26290a1242"
    "en-US"
  end
  language "fr" do
    sha256 "9d95f5b11faa41fbc8985b68e517e4dc7ad2d678ab8584f1e847a3a26805cd49"
    "fr"
  end
  language "gl" do
    sha256 "46133e13ee7af95fa740d97cd551a3cc21c989d0a70fd5ac75c1fef02ba46c8c"
    "gl"
  end
  language "it" do
    sha256 "7647d067b346f8717d7964b8db6c91cd3c326a531d9681cb56a6968c1f62fdb6"
    "it"
  end
  language "ja" do
    sha256 "deb44599fd4fe9195df1d4f8fcd3010ce46fb6fb58610c75bbb768d05dd6489f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f67b42aef73281a4cb9b1b146759216b3df9d2d4271ee908ac4a22870ddd5ccd"
    "nl"
  end
  language "pl" do
    sha256 "4d29b4ef8b76812c2137dae23cfe604485525636611188b4abe8e0636569aec1"
    "pl"
  end
  language "pt" do
    sha256 "c2ab96559d68812edb9e4bc4bb8499b3269b001d976e1057dee00794fec2149d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fbd91483e052217a40b08c9a3a0c216c3df1b269fe09ae6aec8c6ec18775104c"
    "pt-BR"
  end
  language "ru" do
    sha256 "9637d049de48bc66f6bbe57858caed8d466b830cc7b930aea1e7167c467ae133"
    "ru"
  end
  language "uk" do
    sha256 "9578561a00484419b0e7585ee612c158cea8fb9a9295da7cfa23cfbbc23a7069"
    "uk"
  end
  language "zh-TW" do
    sha256 "ee1757bc2f858994bd5666afbacc283f5e53a234096506a25cca2130bba52394"
    "zh-TW"
  end
  language "zh" do
    sha256 "b79ee78349b2fc8212ea41c2a75da039f324612f20221279ac032003dd4ecf5c"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
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

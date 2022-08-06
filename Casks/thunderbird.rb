cask "thunderbird" do
  version "102.1.1"

  language "cs" do
    sha256 "b53a13aa1102e63b529795020d838d2b9b3321773dcc6808a2082e11ea38b944"
    "cs"
  end
  language "de" do
    sha256 "92e8e7892f113b9178cdd110d47ac74fc9a6d1611e874e3ac9bd43e7e58f5587"
    "de"
  end
  language "en-GB" do
    sha256 "199f892a1f9082967e0d68c4e04c83336c7cc2b4c2fc8a29125f2e105b9846ce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "446164a581ad4055123a44bf262cecaa7ede183211bd184e28be9a37e08049f1"
    "en-US"
  end
  language "fr" do
    sha256 "457aace116af0e4077bc1fa30772d3edb663f6767ca5ee5a13db475d119556c2"
    "fr"
  end
  language "gl" do
    sha256 "d8dd028c9627a9e01d3554b0141ed285eccc6e272ab48489a68dbac79eccd29f"
    "gl"
  end
  language "it" do
    sha256 "dea32f0c165f3cbae2a968fd841c21840c4385acbbe4dcacb7a06e6c42ca7c06"
    "it"
  end
  language "ja" do
    sha256 "7a815d5bca99fbb6c694b9d1090739b761400eef8fe1a24f04097867596f8360"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "75f7cb1f1df5f72cff33f1df71f532200663eb4e7e10355fbc6fb66b6df8bec0"
    "nl"
  end
  language "pl" do
    sha256 "8879d12cde641d0cb8e94629c3c8b1f772d6654d95731072a52b4bb3ba3daa41"
    "pl"
  end
  language "pt" do
    sha256 "555725a7d91b9090a728a26b0dfeae95b024abf811fc8da44b140c9cbe07ddf6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "85f45221aadbde816ad69c41beeaed80d552450a517cbef4df5d09e0bbdd5c17"
    "pt-BR"
  end
  language "ru" do
    sha256 "9fb048aed4df3dffb830ffb1de06b4a6d14e5648862c1ca887e2a4180825f426"
    "ru"
  end
  language "uk" do
    sha256 "748922f08bfbf21594177ae602121e931364531464803a8b0d3d3d606540b29f"
    "uk"
  end
  language "zh-TW" do
    sha256 "09c9d677efac2012bfafae8243e4e4ff770a03938ef779c2e30d30bbab544f53"
    "zh-TW"
  end
  language "zh" do
    sha256 "8bf797e55a9f4227269a31f266456848c2b6184282a126bb9a628a535314bab5"
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

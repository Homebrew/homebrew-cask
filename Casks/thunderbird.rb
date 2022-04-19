cask "thunderbird" do
  version "91.8.1"

  language "cs" do
    sha256 "406b6522d879644ffb169bbd09dde40072877fcf29563114e8e4e568dc765a3b"
    "cs"
  end
  language "de" do
    sha256 "f7f8fb72caf8f14b0a015280d3aaeef2566fe63c61173977ac535f62d7c9caff"
    "de"
  end
  language "en-GB" do
    sha256 "d26b295b0b7c3ca0c0e6ccf763aa25f4124fdd819b819422eac93d9b7b6fcdb2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "efec18e8507538418b7056f6056c4c2b7381f252c1daa090ec3056e17386f465"
    "en-US"
  end
  language "fr" do
    sha256 "d321b869d337e3b19aba9717a960af229fc5f497b9d9633edae9301731b2bc84"
    "fr"
  end
  language "gl" do
    sha256 "0a418f26ccb7efda979d20b4522678b31b600e0fab05ff125a4d1d18cb6599d3"
    "gl"
  end
  language "it" do
    sha256 "04481dd5a62e795d62d9a6514c5ae507a9249e872e51557a142ce2297d457355"
    "it"
  end
  language "ja" do
    sha256 "1c46d37492d45ee43e4fc46f053a1975a3ae619da76c3a284fa7688545cd8b9a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6f8745deb130188f02fa613b72026038cf761423f729cc1739432f946fb36ed7"
    "nl"
  end
  language "pl" do
    sha256 "8438433888cc2e578e60bea35d8bc4aa2cbc18238fc2e1fc57e372b3b7aaebea"
    "pl"
  end
  language "pt" do
    sha256 "2e8ad6d2aec108b58626e2a7449b99f1facfd72181181674cbd6ab911b442bc0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "165b4198427cd1863d3299dff146ceb8fac6ceb0ebb8c79d09400063d589bcae"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d19ed5c6e30cc53539f2e1030861dbf7a9422f9600e3c016c1f6de0d9260b47"
    "ru"
  end
  language "uk" do
    sha256 "a44698927fb6e519c96cf46fc7c16ce18243ea16bb9a295f7d3360ca2fe702a1"
    "uk"
  end
  language "zh-TW" do
    sha256 "5ecadc849b5d1e88f0e1ed6c18f7be9fc37874e9eb8cdc52e115d46db9eafba9"
    "zh-TW"
  end
  language "zh" do
    sha256 "63779503c24b6fca65dff3b5e72c6972d5e398327758b60f07bd9f35944d31d3"
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

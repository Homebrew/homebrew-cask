cask "thunderbird" do
  version "102.4.1"

  language "cs" do
    sha256 "3eb82a0b20de136d30575853bae36e2a7f21eadcda265487fc86e2262d9557d8"
    "cs"
  end
  language "de" do
    sha256 "e8d1a21703efa0b0a9eaa671597a7b44052b2f8fe9f88e17a42765d87948b3bf"
    "de"
  end
  language "en-GB" do
    sha256 "72909f22428f79acb17d59b7cd4133d9bedd7fcec2e93d5079cd422fdd936ccc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8083de786520fa5c053c64cdcece23a46ed564eb165af4b6cbaedf3f9dafc7ce"
    "en-US"
  end
  language "fr" do
    sha256 "8959e380ca2484d24b87efda6ee160267e8388fbc755a1cc2f8e26eacfea72b7"
    "fr"
  end
  language "gl" do
    sha256 "b7db20b9763b2439530012d07df3f6a5f78e4b1321bdf7b652a538276ebe4d5e"
    "gl"
  end
  language "it" do
    sha256 "67af07fc8154163184613c3efc3e70dec10a52af7117d75fd70489ba2e36ae29"
    "it"
  end
  language "ja" do
    sha256 "583fa262702cac5aaf4f10f3b5af839ca40aa68bce6de35b235026b97ff89d8b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5aa16b8e018ba04787f594d8a4d5c2eb3c51efdc1695d33b124aa6be075aab93"
    "nl"
  end
  language "pl" do
    sha256 "47be1ac8461839a04bd37bb0931b610ab7c5d34551224ed5edbed6ad147ce7c2"
    "pl"
  end
  language "pt" do
    sha256 "6bba009f10434aa482a8fb50cc94e11e0820bd482b6e2d6b439b7bb207d7f31f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "259e72a3f6277daae8f8dd2df25fe90f828fa49f125e7432b4e71e9e06f5bf4b"
    "pt-BR"
  end
  language "ru" do
    sha256 "5f89128f022fcc2ec948c5cfd4792d12c8f85df1b1ea30da1dda70ca7e8d2efd"
    "ru"
  end
  language "uk" do
    sha256 "8dfafe41be4dc113ebaf7bf4f146ed6349e1f0a32c9fc3f0fef03c417853047c"
    "uk"
  end
  language "zh-TW" do
    sha256 "fd7cc6dfc4395231e0ee68ed839fabac2ee01bcf4373f56028e409c98fb39cfa"
    "zh-TW"
  end
  language "zh" do
    sha256 "9af201142a3072faeb7f031f6596e1763b9d06e6159a79cb55ae101f7edba592"
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

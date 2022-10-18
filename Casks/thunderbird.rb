cask "thunderbird" do
  version "102.3.3"

  language "cs" do
    sha256 "a2c073ac1d844e51f45ab63c287c283d5571c1f0da218ad15e6809bff6f4d2b0"
    "cs"
  end
  language "de" do
    sha256 "9e6ac12033892c3d7e352f1752625e4037e1eb815ed48390701c41f215766fb0"
    "de"
  end
  language "en-GB" do
    sha256 "db75486133c1dd975e47d6e9c0cb453d1ec2d7d982f6d7f6e482d90d40eb8e7a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b254e4345d9625dc6b64e27ba69cd8b0cfce84845f022647799191ca4656cb0b"
    "en-US"
  end
  language "fr" do
    sha256 "96e5fbea529e4c0b91b3e7cd98186fccd8b94910ae7cd37dfca0bd35da80ad1a"
    "fr"
  end
  language "gl" do
    sha256 "3f3a08e6d52b62cc17ee0feb2e93c830c70b6b2431c28bc5c114079deda2c79f"
    "gl"
  end
  language "it" do
    sha256 "659a48e02a5f1c4b7e545fae47d2547715138a923c8a95d714d8906c8abac175"
    "it"
  end
  language "ja" do
    sha256 "cc6e4cf4c5213e03a2a921f7ec602d6b6045efeed05dc3d8d7d2b6e88947f211"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b868cd1d5722a638dd5e77dd450447c7c951a2743707359b9cbe7fea2b412008"
    "nl"
  end
  language "pl" do
    sha256 "3d899779f07f9c8f74be5e96009e7a9091ddb6a572cc1ad6a6010dd689ed37d5"
    "pl"
  end
  language "pt" do
    sha256 "7d8fbd01e38a86b784a174a5dcdf62b799fb04fdea91c371449194ed72abafe5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ab7937928e0d5eea8d541035f51bbcfee77c1c5708ca42df333a32a1e617ea96"
    "pt-BR"
  end
  language "ru" do
    sha256 "adc258569cfe101187aa4500016945783f513a00a7455073fb0734c810ed1384"
    "ru"
  end
  language "uk" do
    sha256 "3aaafcb80fce9516b94508191ca2af3a0f51b48514d82f4a04a5a6b820fe9057"
    "uk"
  end
  language "zh-TW" do
    sha256 "24886c7e5e129acdffcf7cce2adf89cfd0d7d921e8afc07594b972e379fefab5"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d71161c6df7b46db066533ce83afb72ae70dd434b8a69e1471d439d0d14879f"
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

cask "thunderbird" do
  version "78.7.0"

  language "cs" do
    sha256 "92fa116e044fbaef5ff6669a5598a48581137c5f6164d8b73314753a91ba7f67"
    "cs"
  end
  language "de" do
    sha256 "52fe252c35ad675de68981467b3ee4ce527b5ec33b3f25508cdb2293ed8db843"
    "de"
  end
  language "en-GB" do
    sha256 "fc975630476ae365618c508c2dfa29ab6cc0a46a92430053856c29d2708bbaea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "842a7255577d5e2b4cae68ecdc72a7fb5ea579081eaf44674ca4a153b6c80728"
    "en-US"
  end
  language "fr" do
    sha256 "06746e4031d3ed4c67c1b3515152155ebff09d9b4fb3203ca9e128febeb04dbd"
    "fr"
  end
  language "gl" do
    sha256 "d1b66a27bb84412c5fdbd3b5bddaa5a4f571df1c28be5a671edab635e87a438f"
    "gl"
  end
  language "it" do
    sha256 "e2317398a526330d37b64c923119a7fdad0b37936ffeb514cda66b2e6feb5779"
    "it"
  end
  language "ja" do
    sha256 "d4d272cfea27e23d745262ea043593305b44a06b6a7eb70613c0766ac420806f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4f39099871fdd92daa847ea20620041aeccfdf200f28011a2b2ba8bf468a7bde"
    "nl"
  end
  language "pl" do
    sha256 "f78fe60cde9b59753aed28275df53e78a0a8501bfa71b2a3bf066f2a95aea0ac"
    "pl"
  end
  language "pt" do
    sha256 "6a4586bb32066ff117493a7617fe7445b82efd65335e3a33edc5048d2aff4ff4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c05e61d57c3e43e4d960540ff9d263b72ff80fc6382feac092e2aa3565d6a6b2"
    "pt-BR"
  end
  language "ru" do
    sha256 "8da187faca2bc8819284c437fdb4e36a2b61c03a5f9d51084dd81c8665bc9a53"
    "ru"
  end
  language "uk" do
    sha256 "66454d70868c85aa084da5513cd20469182aac4d43581f9a0c1761e2f83e8cb6"
    "uk"
  end
  language "zh-TW" do
    sha256 "2872b6269eba54c76c3d2b9e30317ec9466eced1fa2d9a2336888dd958fdc2fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "d562dcfadfe76d3b11ac96e8402d892319d46184cbd46341f6050565486332ca"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/"
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

cask "thunderbird" do
  version "91.4.1"

  language "cs" do
    sha256 "58a2f24316f5e063b92ed54e04440a5b5c62219817d2a59b438d5bd211f36460"
    "cs"
  end
  language "de" do
    sha256 "45ed669e07b0db0fa284ca49e96e497de7203a3558eb979d301f1ad1ce21d9fc"
    "de"
  end
  language "en-GB" do
    sha256 "0675ef046beac459c3e47d9868f33805d3fd1f8a99eb2249b5fdd6bcdded333b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2a583f36ac0c75084f8f1d944bacaea6427815806f722eb166bdf87801215eae"
    "en-US"
  end
  language "fr" do
    sha256 "7a7def2ce2cb44a56e41b10cebb59cf3bab4adab786480d5b4b89f3ca834b28f"
    "fr"
  end
  language "gl" do
    sha256 "90e1b903fb4aaebd1b15d6352570fb0cca96612f7ae3fc53dab37b418eb1b635"
    "gl"
  end
  language "it" do
    sha256 "103823d4ffaf484648794d94dd42b9f7e7a81d412b339316269379e73a0a97eb"
    "it"
  end
  language "ja" do
    sha256 "977f991b3211c928ba98aef11823fdbc9126f5988c62663fcfcf4b57fde46a43"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e07a7cdde0f1e223fe1bf2ecc8f36d58ba0018a9703d3d99e4594a1bed56855e"
    "nl"
  end
  language "pl" do
    sha256 "22e3556b8e4689709987d0d1ee6673d9ea72a1e0cf8192911134c5fb600ab7e9"
    "pl"
  end
  language "pt" do
    sha256 "9f8e531d5698ac22c998a73c14918a62908b56f3890454bbf077b983720c9193"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7552e2174eb696c7d384381509108ce6413cb81f9a2dc5762e9d617c4dd99c7f"
    "pt-BR"
  end
  language "ru" do
    sha256 "c6337f3c5e8ba3ca1fd59ffa0bc07c46d8594ad08f964b4fd4ee7ca75649e8b6"
    "ru"
  end
  language "uk" do
    sha256 "c5a0a5b2e636a25a3fa09b013dda7b5ee5e4badaafd26426ef00998a97a5e012"
    "uk"
  end
  language "zh-TW" do
    sha256 "7ac6c03363ce860684269da7ce226ba2dc4aa4dec5db1d710d1dff8e8b378bf5"
    "zh-TW"
  end
  language "zh" do
    sha256 "d0c7da9bafb021961d2ecee16d239050ccc3128e3b3bcabc702612627970b8b5"
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

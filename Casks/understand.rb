cask "understand" do
  version "6.3.1137"
  sha256 "877a1065cd1ed4764d4d12028c187005dbeeeb7cd01c7d29929e80e33efe8d72"

  url "https://latest.scitools.com/Understand/Understand-#{version}-macOS-Universal.dmg"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features"

  livecheck do
    url "https://licensing.scitools.com/download/thanks/macOS-Universal.dmg"
    regex(/Understand[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]Universal\.dmg/i)
  end

  app "Understand.app"

  zap trash: [
    "~/Library/Application Support/SciTools",
    "~/Library/Preferences/com.scitools.License.plist",
    "~/Library/Preferences/com.scitools.Understand.plist",
    "~/Library/Saved Application State/com.scitools.Understand.savedState",
  ]
end

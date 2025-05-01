cask "understand" do
  version "7.1.1224"
  sha256 "5a4cab46c8955387c6c8c513977dad93b09bb402497017f0df7287ccfff7dc85"

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

cask "understand" do
  version "7.1.1222"
  sha256 "404baf0b15dbf482d0dc403e399c25a8e838a415f862b8aaf2b931c4f6c1d536"

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

cask "understand" do
  version "7.2.1247"
  sha256 "aeef4a162ad010d8ce21cf1d6a88ff30ae88aac2c6aee4a4754982637a3e1ca2"

  url "https://latest.scitools.com/Understand/Understand-#{version}-macOS-Universal.dmg"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features"

  livecheck do
    url "https://licensing.scitools.com/download/thanks/macOS-Universal.dmg"
    regex(/Understand[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]Universal\.dmg/i)
  end

  depends_on macos: ">= :ventura"

  app "Understand.app"
  binary "#{appdir}/Understand.app/Contents/MacOS/userver"

  zap trash: [
    "~/Library/Application Support/SciTools",
    "~/Library/Preferences/com.scitools.License.plist",
    "~/Library/Preferences/com.scitools.Understand.plist",
    "~/Library/Saved Application State/com.scitools.Understand.savedState",
  ]
end

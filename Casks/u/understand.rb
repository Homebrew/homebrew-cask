cask "understand" do
  version "8.1.1269"
  sha256 "a62fccdaa25044d609fc23bb0fa13724b7b73d8e478cc2bfa767eb78e39b81ef"

  url "https://latest.scitools.com/Understand/Understand-#{version}-macOS-Universal.dmg"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features"

  livecheck do
    url "https://licensing.scitools.com/download/thanks/macOS-Universal.dmg"
    regex(/Understand[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]Universal\.dmg/i)
  end

  depends_on macos: :ventura

  app "Understand.app"
  binary "#{appdir}/Understand.app/Contents/MacOS/userver"

  zap trash: [
    "~/Library/Application Support/SciTools",
    "~/Library/Preferences/com.scitools.License.plist",
    "~/Library/Preferences/com.scitools.Understand.plist",
    "~/Library/Saved Application State/com.scitools.Understand.savedState",
  ]
end

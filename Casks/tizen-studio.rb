cask "tizen-studio" do
  version "4.1"
  sha256 "e49893861fd9b0871e9decf9fd5ad963f6398957c32c5b604a18cce96c8a539f"

  url "https://download.tizen.org/sdk/Installer/tizen-studio_#{version}/web-ide_Tizen_Studio_#{version}_macos-64.dmg"
  name "Tizen Studio"
  desc "Official IDE for developing web and native applications for Tizen"
  homepage "https://developer.tizen.org/"

  livecheck do
    url "https://download.tizen.org/sdk/Installer/"
    regex(/tizen-studio_(\d+(?:\.\d+)*)/}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Tizen Studio.app"

  zap trash: [
    "~/tizen-studio",
    "~/Applications/tizen-studio",
    "~/Library/Preferences/org.tizen.sdk.ide.plist",
    "~/Library/Saved Application State/org.tizen.sdk.ide.savedState",
  ]
end

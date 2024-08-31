cask "uxprotect" do
  version "1.1.1"
  sha256 "e6a0472e35d04cf719e8841c813ff0e155550ab47d2e05c3a426a6815f05fbc2"

  url "https://digitasecurity.com/download/uxprotect/UXProtect#{version}.zip"
  name "UXProtect"
  homepage "https://digitasecurity.com/product/uxprotect/"

  deprecate! date: "2024-08-30", because: :unmaintained

  auto_updates true
  depends_on macos: ">= :sierra"

  app "UXProtect.app"

  zap trash: [
    "~/Library/Application Scripts/com.digitasecurity.UXProtect",
    "~/Library/Caches/com.digitasecurity.UXProtect",
    "~/Library/Caches/KSCrash/UXProtect",
    "~/Library/Containers/com.digitasecurity.UXProtect",
    "~/Library/Preferences/com.digitasecurity.UXProtect.plist",
  ]

  caveats do
    requires_rosetta
  end
end

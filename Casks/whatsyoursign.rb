cask "whatsyoursign" do
  version "2.1.0"
  sha256 "01037125e2f5846ca15f33c5e6ab6fb6128f89a10378f770d2dcc1cf5a8e31ea"

  url "https://github.com/objective-see/WhatsYourSign/releases/download/v#{version}/WhatsYourSign_#{version}.zip",
      verified: "github.com/objective-see/"
  name "What's Your Sign?"
  desc "Shows a files cryptographic signing information"
  homepage "https://objective-see.com/products/whatsyoursign.html"

  installer manual: "WhatsYourSign Installer.app"

  uninstall delete: [
              "/Applications/WhatsYourSign.app",
              "~/Library/Application Scripts/com.objective-see.WhatsYourSignExt.FinderSync",
              "~/Library/Containers/com.objective-see.WhatsYourSignExt.FinderSync",
            ],
            script: {
              executable:   "/usr/bin/pluginkit",
              args:         [
                "-r",
                "/Applications/WhatsYourSign.app/Contents/PlugIns/WhatsYourSign.appex",
              ],
              must_succeed: false,
            }

  zap trash: "~/Library/Saved Application State/com.objective-see.WhatsYourSign.savedState"
end

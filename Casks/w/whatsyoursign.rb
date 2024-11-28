cask "whatsyoursign" do
  version "3.0.1"
  sha256 "691e5873509d30f0a6c4be01eca14cf9d551fcb4510b6739835929a3f33e779e"

  url "https://github.com/objective-see/WhatsYourSign/releases/download/v#{version}/WhatsYourSign_#{version}.zip",
      verified: "github.com/objective-see/"
  name "What's Your Sign?"
  desc "Shows a files cryptographic signing information"
  homepage "https://objective-see.com/products/whatsyoursign.html"

  installer manual: "WhatsYourSign Installer.app"

  uninstall script: {
              executable:   "/usr/bin/pluginkit",
              args:         [
                "-r",
                "/Applications/WhatsYourSign.app/Contents/PlugIns/WhatsYourSign.appex",
              ],
              must_succeed: false,
            },
            delete: [
              "/Applications/WhatsYourSign.app",
              "~/Library/Application Scripts/com.objective-see.WhatsYourSignExt.FinderSync",
              "~/Library/Containers/com.objective-see.WhatsYourSignExt.FinderSync",
            ]

  zap trash: "~/Library/Saved Application State/com.objective-see.WhatsYourSign.savedState"
end

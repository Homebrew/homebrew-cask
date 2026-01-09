cask "whatsyoursign" do
  version "3.2.0"
  sha256 "90a00484421c0bd9d5fb5c3ca1a22a08274ce9d5309055055c455f37c3ef8834"

  url "https://github.com/objective-see/WhatsYourSign/releases/download/v#{version}/WhatsYourSign_#{version}.zip",
      verified: "github.com/objective-see/"
  name "What's Your Sign?"
  desc "Shows a files cryptographic signing information"
  homepage "https://objective-see.org/products/whatsyoursign.html"

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

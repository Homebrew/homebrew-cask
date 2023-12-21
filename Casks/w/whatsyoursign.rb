cask "whatsyoursign" do
  version "2.2.1"
  sha256 "795407b7a8fbc2dc7c2b4b83310a097c9bb6ff8777755294cfa229c0efc87b4b"

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

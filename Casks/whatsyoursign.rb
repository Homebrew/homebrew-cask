cask "whatsyoursign" do
  version "2.2.0"
  sha256 "4d14b1fd1ec2741b2ee91102350a5c92185dd89211da192009f5043b2a1cf220"

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

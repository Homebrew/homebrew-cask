cask "whatsyoursign" do
  version "2.0.0"
  sha256 "5ead83b3c4b891b3c8453d861a725af97fcf26df527b6759f7cb2bd884e145e1"

  url "https://bitbucket.org/objective-see/deploy/downloads/WhatsYourSign_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  appcast "https://objective-see.com/products/changelogs/WhatsYourSign.txt"
  name "What's Your Sign?"
  desc "Shows a files cryptographic signing information"
  homepage "https://objective-see.com/products/whatsyoursign.html"

  depends_on macos: ">= :yosemite"

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
end

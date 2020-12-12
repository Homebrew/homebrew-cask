cask "yu-writer" do
  version "0.5.3,beta"
  sha256 "4fff4042c6ac7c047097c5e6d59a8a1c3f9dacfbdcadb3121904426413b38e06"

  # github.com/ivarptr/yu-writer.site/ was verified as official when first introduced to the cask
  url "https://github.com/ivarptr/yu-writer.site/releases/download/v#{version.before_comma}/yu-writer-#{version.after_comma}-#{version.before_comma}-macos.dmg"
  appcast "https://github.com/ivarptr/yu-writer.site/releases.atom"
  name "Yu Writer"
  homepage "https://ivarptr.github.io/yu-writer.site/"

  app "Yu Writer.app"

  zap trash: [
    "~/Library/Application Support/Yu Writer",
    "~/Library/Caches/Yu Writer",
    "~/Library/Preferences/com.github.yu-writer.helper.plist",
    "~/Library/Preferences/com.github.yu-writer.plist",
  ]
end

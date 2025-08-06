cask "xsplit-vcam" do
  arch arm: "arm", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "4.0.2206.0801"
  sha256 arm:   "164002714041f5e94427c227bc1eb21b11a95490cce65e613746128d02fc055e",
         intel: "5c4f9b77e47c1938140deccf21f56dc7643eb7f622c99ac52aa4501bbf073591"

  url "https://cdn2.xsplit.com/download/vc/macos/builds/#{version}/XSplit_VCam_#{version}_#{arch}.pkg"
  name "XSplit VCam"
  desc "Webcam background tool"
  homepage "https://www.xsplit.com/vcam"

  livecheck do
    url "https://cdn2.xsplit.com/download/vc/macos/prod/#{livecheck_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "XSplit_VCam_#{version}_#{arch}.pkg"

  uninstall launchctl: "com.xsplit.vcam.assistant",
            quit:      "com.xsplit.vcam",
            pkgutil:   "com.xsplit.vcam.installer.pkg",
            delete:    [
              "/Applications/XSplit VCam",
              "/Library/CoreMediaIO/Plug-Ins/DAL/XSplit VCam.plugin",
            ]

  zap trash: [
    "/Library/Application Support/com.xsplit.vcam.dal",
    "/Library/LaunchDaemons/com.xsplit.vcam.assistant.plist",
    "/Library/Logs/DiagnosticReports/XSplit VCam*.diag",
    "/Library/Preferences/com.xsplit.vcam.tokens.plist",
    "~/Library/Application Support/XSplit/VCam",
    "~/Library/HTTPStorages/com.xsplit.vcam",
    "~/Library/Logs/XSplit VCam*.log",
    "~/Library/Preferences/com.xsplit.vcam*.plist",
    "~/Library/Saved Application State/com.xsplit.vcam.savedState",
  ]
end

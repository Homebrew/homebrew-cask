cask "vcam" do
  version "2.0.174"
  sha256 "6c30f92a3d4ef5e6c5cec6b3464513b3981a12a25f53f8abf3b347aa89e30938"

  url "https://downloads.vcam.ai/mac/VCam.ai_#{version}.pkg"
  name "VCam.ai"
  desc "Webcam background tool"
  homepage "https://vcam.ai/"

  livecheck do
    url "https://downloads.vcam.ai/mac/updates.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  pkg "VCam.ai_#{version}.pkg"

  postflight do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open /Applications/VCam.ai/VCam.app` is called from the
    # postinstall script of the package and we don't want any user intervention there.
    retries ||= 3
    ohai "The VCam.ai package postinstall script launches the VCam app" if retries >= 3
    ohai "Attempting to close VCam.app to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/VCam.ai/VCam.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close VCam.app"
  end

  uninstall quit:    "ai.vcam.desktop",
            pkgutil: [
              "camera-helper",
              "electron-app",
              "vcam.ai-uninstall",
            ],
            delete:  "/Applications/VCam.ai"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.vcam.desktop.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.splitmedialabs.camerahelper.sfl*",
    "~/Library/Application Support/VCam.ai",
    "~/Library/Preferences/ai.vcam.desktop.plist",
    "~/Library/Saved Application State/ai.vcam.desktop.savedState",
  ]
end

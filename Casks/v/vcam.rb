cask "vcam" do
  version "5.1.1"
  sha256 "0e25fb80654a50b924f84b8fe538197893d8b292b69157290dc27310c4dad522"

  url "https://installers.vcam.ai/VCam_#{version}.pkg"
  name "VCam"
  desc "Webcam background tool"
  homepage "https://vcam.ai/"

  livecheck do
    url "https://go.vcam.ai/download-mac"
    strategy :header_match
  end

  depends_on :macos

  pkg "VCam_#{version}.pkg"

  postflight_steps do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open /Applications/VCam/VCam.app` is called from the
    # postinstall script of the package and we don't want any user intervention there.
    terminate_process(
      "/Applications/VCam/VCam.app",
      match:           :full,
      attempts:        3,
      must_succeed:    false,
      notices:         [
        "The VCam package postinstall script launches the VCam app",
        "Attempting to close VCam.app to avoid unwanted user intervention",
      ],
      failure_message: "Unable to forcibly close VCam.app",
    )
  end

  uninstall quit:    "ai.vcam.desktop",
            pkgutil: [
              "camera-helper",
              "electron-app",
              "vcam.ai-uninstall",
            ],
            delete:  "/Applications/VCam"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.vcam.desktop.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.splitmedialabs.camerahelper.sfl*",
    "~/Library/Application Support/VCam",
    "~/Library/Application Support/VCam.ai",
    "~/Library/Preferences/ai.vcam.desktop.plist",
    "~/Library/Saved Application State/ai.vcam.desktop.savedState",
  ]
end

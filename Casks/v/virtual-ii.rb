cask "virtual-ii" do
  version "13.2"
  sha256 :no_check

  url "https://virtualii.com/VirtualII.dmg"
  name "Virtual ]["
  desc "Apple II Emulator"
  homepage "https://virtualii.com/"

  # The download URL is consistently unreachable in CI environment
  disable! date: "2026-08-28", because: :unreachable

  depends_on macos: :monterey

  suite "Virtual ]["

  preflight_steps do
    # There is no sub-folder in the DMG; the root *is* the folder
    move_contents ".", "Virtual ]["
  end

  zap trash: [
    "~/Library/Application Support/Virtual ][",
    "~/Library/Caches/SentryCrash/Virtual ][",
    "~/Library/Application Scripts/nl.xs4all.gp.virtualii.VIIDiskViewerQLExtension",
    "~/Library/Application Scripts/nl.xs4all.gp.virtualii.VIISavedStateViewerExtension",
    "~/Library/Caches/nl.xs4all.gp.virtualii",
    "~/Library/Containers/nl.xs4all.gp.virtualii.VIIDiskViewerQLExtension",
    "~/Library/Containers/nl.xs4all.gp.virtualii.VIISavedStateViewerExtension",
    "~/Library/HTTPStorages/nl.xs4all.gp.virtualii",
    "~/Library/Preferences/nl.xs4all.gp.virtualii.plist",
    "~/Library/Saved Application State/nl.xs4all.gp.virtualii.savedState",
  ]

  caveats <<~EOS
    This app requires a ROM image, which must be downloaded and installed
    separately. See #{homepage}VirtualIIHelp/virtual_II_help.html#ROMImage
    for more info.
  EOS
end

cask "virtual-ii" do
  version "13.0"
  sha256 :no_check

  url "https://virtualii.com/VirtualII.dmg"
  name "Virtual ]["
  desc "Apple II Emulator"
  homepage "https://virtualii.com/"

  livecheck do
    url "https://virtualii.com/versionlist.xml"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='VirtualII']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  depends_on macos: ">= :monterey"

  suite "Virtual ]["

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("Virtual ][").tap(&:mkpath))
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

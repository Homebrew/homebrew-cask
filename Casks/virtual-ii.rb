cask "virtual-ii" do
  version "11.4"
  sha256 :no_check

  url "https://virtualii.com/VirtualII.dmg"
  name "Virtual ]["
  desc "Apple II Emulator"
  homepage "https://virtualii.com/"

  livecheck do
    url :homepage
    regex(/version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  suite "Virtual ]["

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("Virtual ][").tap(&:mkpath))
  end

  zap trash: [
    "~/Library/Application Support/Virtual ][",
    "~/Library/Caches/SentryCrash/Virtual ][",
    "~/Library/Preferences/nl.xs4all.gp.virtualii.plist",
    "~/Library/Saved Application State/nl.xs4all.gp.virtualii.savedState",
  ]

  caveats <<~EOS
    This app requires a ROM image, which must be downloaded and installed
    separately. See #{homepage}VirtualIIHelp/virtual_II_help.html#ROMImage
    for more info.
  EOS
end

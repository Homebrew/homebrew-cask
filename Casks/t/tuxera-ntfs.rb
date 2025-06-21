cask "tuxera-ntfs" do
  version "2024"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://tuxera.com/mac/tuxerantfs_#{version}.dmg"
  name "Tuxera NTFS"
  desc "File system and storage management software"
  homepage "https://ntfsformac.tuxera.com/"

  livecheck do
    url "https://download.tuxera.com/mac/tuxerantfs_latest.dmg"
    strategy :header_match
  end

  auto_updates true

  pkg ".packages/Flat/Install Tuxera NTFS.mpkg"

  uninstall quit:    [
              "com.tuxera.filesystems.ntfs.agent",
              "com.tuxera.Tuxera-NTFS",
            ],
            pkgutil: [
              "com.tuxera.pkg.Tuxera_NTFS",
              "com.tuxera.pkg.Tuxera_NTFS_compat",
            ]

  zap delete: [
        "/Library/Application Support/Tuxera NTFS",
        "/Library/Preferences/com.tuxera.NTFS.plist",
      ],
      trash:  [
        "~/Library/Caches/com.tuxera.filesystems.ntfs.agent",
        "~/Library/Saved Application State/com.tuxera.TuxeraDiskManager.savedState",
      ]
end

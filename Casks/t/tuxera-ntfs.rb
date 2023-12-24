cask "tuxera-ntfs" do
  version "2023.1"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://tuxera.com/mac/tuxerantfs_#{version}.dmg"
  name "Tuxera NTFS"
  desc "File system and storage management software"
  homepage "https://ntfsformac.tuxera.com/"

  livecheck do
    url "https://ntfsformac.tuxera.com/support/"
    regex(/Release\s*?v?(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  pkg ".packages/Flat/Install Tuxera NTFS.mpkg"

  uninstall quit:    [
              "com.tuxera.Tuxera-NTFS",
              "com.tuxera.filesystems.ntfs.agent",
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
        "~/Library/Saved Application State/com.tuxera.TuxeraDiskManager.savedState",
        "~/Library/Caches/com.tuxera.filesystems.ntfs.agent",
      ]
end

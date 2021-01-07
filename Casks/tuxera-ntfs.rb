cask "tuxera-ntfs" do
  version "2020"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://tuxera.com/mac/tuxerantfs_#{version}.dmg"
  appcast "https://ntfsformac.tuxera.com/",
          must_contain: "tuxerantfs_#{version}.dmg"
  name "Tuxera NTFS"
  desc "File system and storage management software"
  homepage "https://ntfsformac.tuxera.com/"

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
end

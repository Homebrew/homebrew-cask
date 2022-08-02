cask "tuxera-ntfs" do
  version "2021.1"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://tuxera.com/mac/tuxerantfs_#{version}.dmg"
  name "Tuxera NTFS"
  desc "File system and storage management software"
  homepage "https://ntfsformac.tuxera.com/"

  livecheck do
    url :homepage
    regex(/href=.*?tuxerantfs[._-]?v?(\d+(?:\.\d+)*)\.dmg/i)
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
end

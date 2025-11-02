cask "windiskwriter" do
  version "1.3"

  on_catalina :or_older do
    depends_on arch: :intel
  end
  on_sequoia :or_older do
    sha256 "aa9ae40a4cb7ed3a871aacec5e45369322e304bcaf2fa62451615504c384d9b5"

    url "https://github.com/TechUnRestricted/WinDiskWriter/releases/download/v#{version}/WinDiskWriter.#{version}.zip"
  end
  on_tahoe :or_newer do
    arch arm: "_Tahoe_26.0+.Apple_Silicon", intel: "_Tahoe_26.0+.Intel"

    sha256 arm:   "04fdf6f2fd7245d56073ee2aa41f451dced73b329d62764f9d66b4bcbddb1f6e",
           intel: "a502acd959e5db7721af3a20118f22aabddb65f8c45da6e152410c88bbe8ae71"

    url "https://github.com/TechUnRestricted/WinDiskWriter/releases/download/v#{version}/WinDiskWriter.v#{version}#{arch}.zip"
  end

  name "windiskwriter"
  desc "Windows bootable USB creator"
  homepage "https://github.com/TechUnRestricted/WinDiskWriter"

  livecheck do
    url "https://github.com/TechUnRestricted/WinDiskWriter"
    strategy :github_latest
  end

  app "WinDiskWriter.app"

  zap trash: [
    "~/Library/Caches/WinDiskWriter",
    "~/Library/Preferences/com.techunrestricted.windiskwriter.plist",
  ]
end

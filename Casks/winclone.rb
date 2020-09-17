cask "winclone" do
  version "8.2"
  sha256 "34843ec91ea246055018d7d60ae4b2baa1297e1c4ef5e1c41f2d77b1a9d18bc5"

  # twocanoes-software-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://twocanoes-software-updates.s3.amazonaws.com/Winclone#{version.major}.dmg"
  appcast "https://twocanoes.com/winclone/updates/winclone8-software-updates.xml"
  name "Winclone"
  desc "Boot Camp cloning and backup solution"
  homepage "https://twocanoes.com/products/mac/winclone"

  depends_on macos: ">= :mojave"

  pkg "Winclone.pkg"

  uninstall_preflight do
    system_command "/usr/sbin/installer",
                   args: [
                     "-pkg", "#{staged_path}/Uninstaller/Uninstall Winclone.pkg",
                     "-target", "/"
                   ],
                   sudo: true
  end

  uninstall signal:  [["TERM", "com.twocanoes.Winclone#{version.major}"]],
            pkgutil: "com.twocanoes.pkg.Winclone*"

  zap trash: [
    "~/Library/Application Support/Winclone",
    "~/Library/Caches/com.twocanoes.Winclone#{version.major}",
    "~/Library/Logs/Winclone",
  ]
end

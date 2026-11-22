cask "zotero" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "_linux-#{arch}.tar.xz"
  platform = on_system_conditional macos: "mac", linux: "linux-#{arch}"

  on_macos do
    version "10.0.9"
    sha256 "fa42a04c33028ee020ccf47e64b3e135ce2fc57ba9a099e9f467f280ea56a387"

    conflicts_with cask: "zotero@beta"

    app "Zotero.app"

    uninstall quit: "org.zotero.zotero"

    zap trash: [
          "~/Library/Application Scripts/org.zotero.SafariExtensionApp.SafariExtension",
          "~/Library/Application Scripts/org.zotero.zotero.SafariExtension",
          "~/Library/Application Scripts/org.zotero.zotero.SafariWebExtension",
          "~/Library/Application Support/Zotero",
          "~/Library/Caches/Zotero",
          "~/Library/Containers/org.zotero.SafariExtensionApp.SafariExtension",
          "~/Library/Containers/org.zotero.zotero.SafariExtension",
          "~/Library/Containers/org.zotero.zotero.SafariWebExtension",
          "~/Library/Preferences/org.zotero.zotero.plist",
          "~/Library/Saved Application State/org.zotero.zotero.savedState",
        ],
        rmdir: "~/Zotero"
  end
  on_linux do
    version "10.0.8"
    sha256 arm64_linux:  "395ae276330049dc9fa8bad3a40fe9625c52b85054d1b787db83f35314152da6",
           x86_64_linux: "a704cfd49f5de65507910e0cada4acf72097572201b3576583f0a92a32c1032b"

    binary "Zotero_linux-#{arch}/zotero"
    artifact "Zotero_linux-#{arch}/zotero.desktop", target: "~/.local/share/applications/zotero.desktop"

    preflight_steps do
      inreplace "Zotero_linux-#{arch}/zotero.desktop", /^Exec=.+$/,
                "Exec={{staged_path}}/Zotero_linux-{{arch}}/zotero -url %U"
      inreplace "Zotero_linux-#{arch}/zotero.desktop", /^Icon=.+$/,
                "Icon={{staged_path}}/Zotero_linux-{{arch}}/icons/icon128.png"
    end

    zap trash: [
          "~/.cache/zotero",
          "~/.zotero",
        ],
        rmdir: "~/Zotero"
  end

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}#{url_end}"
  name "Zotero"
  desc "Collect, organise, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/client/dl?channel=release&platform=#{platform}"
    regex(/Zotero[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
end

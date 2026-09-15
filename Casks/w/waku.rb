cask "waku" do
  arch arm: on_system_conditional(linux: "-aarch64"), intel: on_system_conditional(linux: "-x86_64")
  url_end = on_system_conditional macos: ".dmg", linux: "-unknown-linux-gnu.tar.gz"
  file_prefix = on_system_conditional macos: "Waku", linux: "waku"

  version "0.1.19"
  sha256 arm:          "b4dbfb6377be68ab8649cf8063cdae0156dc6f5a862c1c0ba77b4d6157e3d406",
         arm64_linux:  "cd7b0bdefb34451c99e1f81f7fcddfaedda7e0c214e31502174bd999791bdb31",
         x86_64_linux: "5f3dc37775cc56423af3c19596d29c6fc6e56bcd084faf405efcfb549782b030"

  on_macos do
    auto_updates true
    depends_on arch: :arm64
    depends_on macos: :ventura

    app "Waku.app"

    uninstall quit: "sh.waku"

    zap trash: [
      "~/.waku",
      "~/Library/Application Support/sh.waku",
      "~/Library/Application Support/Waku",
      "~/Library/Caches/sh.waku",
      "~/Library/Caches/Waku",
      "~/Library/HTTPStorages/sh.waku",
      "~/Library/Preferences/sh.waku.plist",
      "~/Library/Saved Application State/sh.waku.savedState",
    ]
  end
  on_linux do
    binary "waku-#{version}#{arch}-unknown-linux-gnu/bin/waku"

    zap trash: "~/.waku"
  end

  url "https://github.com/egoist/waku/releases/download/v#{version}/#{file_prefix}-#{version}#{arch}#{url_end}"
  name "Waku"
  desc "Native desktop app for coding agents"
  homepage "https://waku.sh/"
end

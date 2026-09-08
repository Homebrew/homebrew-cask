cask "waku" do
  arch arm: on_system_conditional(linux: "-aarch64"), intel: on_system_conditional(linux: "-x86_64")
  url_end = on_system_conditional macos: ".dmg", linux: "-unknown-linux-gnu.tar.gz"
  file_prefix = on_system_conditional macos: "Waku", linux: "waku"

  version "0.1.18"
  sha256 arm:          "a2a6a98d0c782f336caf4a110753fc25d4492e2eb8d0cf42c30734ca3aa8d89a",
         arm64_linux:  "64f2c876a748b27664c27b6afd0dbee2c57c51811987a99eeed707e915c35830",
         x86_64_linux: "10a1db976113844a140537b85afebd0e0d043f40472954ef8563c599f23a0093"

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

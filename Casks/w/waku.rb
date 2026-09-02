cask "waku" do
  arch arm: on_system_conditional(linux: "-aarch64"), intel: on_system_conditional(linux: "-x86_64")
  url_end = on_system_conditional macos: ".dmg", linux: "-unknown-linux-gnu.tar.gz"
  file_prefix = on_system_conditional macos: "Waku", linux: "waku"

  version "0.1.17"
  sha256 arm:          "45c0f3613171e5aa8973a4cde81ed3bf32ec38bc75cf4bd9a2529b88da33e7b3",
         arm64_linux:  "e3b5fc2b9280ab651423253edaba2dc83f16739ebfcef79ffab8771d6ed20f7a",
         x86_64_linux: "24ffa27a434009c462ea4dcbdf2f78895901f6d13da481ee2e7a34f3fee079f8"

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

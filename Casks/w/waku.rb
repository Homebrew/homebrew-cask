cask "waku" do
  arch arm: on_system_conditional(linux: "-aarch64"), intel: on_system_conditional(linux: "-x86_64")
  url_end = on_system_conditional macos: ".dmg", linux: "-unknown-linux-gnu.tar.gz"
  file_prefix = on_system_conditional macos: "Waku", linux: "waku"

  version "0.1.20"
  sha256 arm:          "b01d0cbc3cc6f4e4717d4be56e2f58b46114ad2f9439cf28a228e4a7585e53ce",
         arm64_linux:  "b075e3fb8ca85e1ba8df7f72aa47447a4fbd1b99b985aacad9eb5046ae6b1bb9",
         x86_64_linux: "8bad569f3a3794aedae4f79ffaf711fe9b8ef3173e605c009ce07a71a7aea415"

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

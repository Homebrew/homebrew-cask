cask "waku" do
  arch arm: on_system_conditional(linux: "-aarch64"), intel: on_system_conditional(linux: "-x86_64")
  url_end = on_system_conditional macos: ".dmg", linux: "-unknown-linux-gnu.tar.gz"
  file_prefix = on_system_conditional macos: "Waku", linux: "waku"

  version "0.1.16"
  sha256 arm:          "1b83cc7b7505daa4ced58b1c4ac26c919c61f5a16bb26a17d8b6f4e56e5b39c5",
         arm64_linux:  "5d7d9ac5e17fe60c496dc2f1537b458b205363fa6c6efd9f694eee79b1ac60f4",
         x86_64_linux: "09615f8705651687fdc618da65282aac9812ade682003f18b8789348bede6508"

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

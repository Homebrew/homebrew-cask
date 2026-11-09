cask "xournal++" do
  arch arm:   on_system_conditional(macos: "ARM64", linux: "aarch64"),
       intel: on_system_conditional(macos: "X64", linux: "x86_64")
  os macos: "macOS-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.8"
  sha256 arm:          "7d992ef097afd6db304cb9df70615e67f1a1de412e06f7dc8f907fcde3b7d6d7",
         intel:        "e61a58f9dea32805f87c9a0310aa319809a1045b06600afc0a55e79a097cc4eb",
         arm64_linux:  "b3da34917ad5e8604a4269f149e456803afb2fca038ee535e922b8055d7e3441",
         x86_64_linux: "fda3587ace5504275a227d4013ba5da0988bac52be281d04a4040e5e1abd5682"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    app "Xournal++.app"

    zap trash: [
      "~/.xournalpp",
      "~/Library/Saved Application State/com.github.xournalpp.savedState",
    ]
  end
  on_linux do
    app_image "xournalpp-#{version}-#{arch}.AppImage", target: "Xournal++.AppImage"

    zap trash: [
      "~/.cache/xournalpp",
      "~/.config/xournalpp",
    ]
  end

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-#{os}#{arch}.#{url_end}"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  livecheck do
    url :url
    strategy :github_latest
  end
end

cask "xournal++" do
  arch arm:   on_system_conditional(macos: "ARM64", linux: "aarch64"),
       intel: on_system_conditional(macos: "X64", linux: "x86_64")
  os macos: "macOS-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.7"
  sha256 arm:          "b13e5229e113da630946826ddc37e25d33d24fe1192ab0d3327468e319ccf4d4",
         intel:        "cb474a78fe65a5d59b9774d37f0f04e7da4340535ee8d50983fb0b5df9cee313",
         arm64_linux:  "8de51abae9a4fb3e2984ee5c7819805eb1d3520e6071c4967d82b58ed1d16276",
         x86_64_linux: "b1f4122b496c5595a93ff94b57f774eacd223d0da9d56fa615e1e637728a636f"

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

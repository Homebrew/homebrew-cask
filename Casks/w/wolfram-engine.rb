cask "wolfram-engine" do
  version "14.0.0.0"
  sha256 "6f281cc645d63e98180327f084fda3becd78ae5c977e2026f71ed48e2999d381"

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg",
      verified: "files.wolframcdn.com/packages/Homebrew/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

  livecheck do
    url "https://files.wolframcdn.com/packages/Homebrew/latest.txt"
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "Wolfram Engine.app"
  binary "#{appdir}/Wolfram Engine.app/Contents/Resources/Wolfram Player.app/Contents/MacOS/wolframscript"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wolfram.mathematica.player.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wolfram.wolframengine.sfl*",
        "~/Library/Application Support/Wolfram",
        "~/Library/Caches/Wolfram",
        "~/Library/Logs/DiagnosticReports/WolframKernel*",
        "~/Library/Logs/Wolfram",
        "~/Library/WolframEngine",
      ],
      rmdir: "~/Documents/Wolfram Player"

  caveats do
    free_license "https://www.wolfram.com/engine/free-license/"
  end
end

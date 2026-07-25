cask "wolfram-engine" do
  version "15.0.0.0"
  sha256 "ca3f0252b0df22d87d139dee1371a2a53be9784106b5974787dd024ef6ef959b"

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg",
      verified: "files.wolframcdn.com/packages/Homebrew/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

  livecheck do
    url "https://files.wolframcdn.com/packages/Homebrew/latest.txt"
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

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

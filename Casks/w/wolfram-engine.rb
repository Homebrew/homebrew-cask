cask "wolfram-engine" do
  version "14.1.0.0"
  sha256 "8c5f7ea938316c20d8627a9ffafa13b084d4b6b583c6e18b425971da13b0c5ec"

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg",
      verified: "files.wolframcdn.com/packages/Homebrew/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

  livecheck do
    url "https://account.wolfram.com/dl/WolframEngine?platform=Mac"
    regex(%r{WolframEngine/(\d+(?:\.\d+)+)}i)
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

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

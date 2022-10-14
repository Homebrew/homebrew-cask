cask "wolfram-engine" do
  version "13.1.0.0"
  sha256 "f7595e229b9c9883d7d1a5cf27237794567ad89b7b884afee2857e9853f40ce9"

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg",
      verified: "files.wolframcdn.com/packages/Homebrew/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

  livecheck do
    url "https://files.wolframcdn.com/packages/Homebrew/latest.txt"
    regex(/^(\d+(?:\.\d+)+)$/)
  end

  depends_on macos: ">= :mojave"

  app "Wolfram Engine.app"
  binary "#{appdir}/Wolfram Engine.app/Contents/Resources/Wolfram Player.app/Contents/MacOS/wolframscript"

  zap trash: [
    "~/Library/Caches/Wolfram",
    "~/Library/WolframEngine",
  ]

  caveats do
    free_license "https://www.wolfram.com/engine/free-license/"
  end
end

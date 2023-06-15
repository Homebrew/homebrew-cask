cask "wolfram-engine" do
  version "13.2.0.0"
  sha256 "90233c70a56a104775666e2559f0126a074a6adf298aec949b316f51cb6372bc"

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg",
      verified: "files.wolframcdn.com/packages/Homebrew/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

  livecheck do
    url "https://files.wolframcdn.com/packages/Homebrew/latest.txt"
    regex(/^(\d+(?:\.\d+)+)$/i)
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

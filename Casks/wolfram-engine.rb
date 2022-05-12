cask "wolfram-engine" do
  version "13.0.1.0"
  sha256 "1aeb80e3686957a7bfe9bf36c40b05667d792abc6a4dbc883ff45930d4ecc009"

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC_EXP.dmg",
      verified: "files.wolframcdn.com/packages/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram language"
  homepage "https://www.wolfram.com/engine/"

  livecheck do
    url "https://account.wolfram.com/download/public/wolfram-engine/desktop/MAC"
    strategy :header_match
    regex(%r{/v?(\d+(?:\.\d+)+)/WolframEngine[._-]v?\d+(?:\.\d+)+[._-]MAC(?:_EXP)?\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Wolfram Engine.app"

  zap trash: [
    "~/Library/Caches/Wolfram",
    "~/Library/WolframEngine",
  ]

  caveats do
    free_license "https://www.wolfram.com/engine/free-license/"
  end
end

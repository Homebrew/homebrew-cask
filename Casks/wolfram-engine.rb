cask "wolfram-engine" do
  version "13.0.1.0"
  sha256 :no_check

  url "https://account.wolfram.com/download/public/wolfram-engine/desktop/MAC",
      verified: "files.wolframcdn.com/packages/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

  livecheck do
    url "https://account.wolfram.com/download/public/wolfram-engine/desktop/MAC"
    strategy :header_match
    regex(%r{/v?(\d+(?:\.\d+)+)/WolframEngine[._-]v?\d+(?:\.\d+)+[._-]MAC(?:_EXP)?\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Wolfram Engine.app"

  zap trash: [
    "~/Library/WolframEngine",
    "~/Library/Caches/Wolfram",
  ]

  caveats do
    free_license "https://www.wolfram.com/engine/free-license/"
  end
end

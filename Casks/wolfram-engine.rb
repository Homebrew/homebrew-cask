cask "wolfram-engine" do
  version "12.3.0.0"
  sha256 "6a34377044a3341cb89631395b77c2030c96cb4f5ab9399ba75e50edff182506"

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg",
      verified: "files.wolframcdn.com/packages/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

  livecheck do
    url "https://account.wolfram.com/download/public/wolfram-engine/desktop/MAC"
    strategy :header_match
    regex(%r{/v?(\d+(?:\.\d+)+)/WolframEngine[._-]v?\d+(?:\.\d+)+[._-]MAC\.dmg}i)
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

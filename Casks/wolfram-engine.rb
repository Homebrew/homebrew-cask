cask "wolfram-engine" do
  version "12.2.0.0"
  sha256 "5b3e10720b2e0a87cfb8732393c893a7b2efaad172ce50a35ef348603f0a010c"

  url "https://files.wolframcdn.com/packages/Homebrew/#{version}/WolframEngine_#{version.major_minor_patch}_MAC.dmg",
      verified: "files.wolframcdn.com/packages/"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

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

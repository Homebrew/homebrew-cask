cask "wolfram-engine" do
  version "12.1.1"
  sha256 "fe43def3b2828286ffae0fee8ee82227322751d68467d4a60d2283be6df41fe3"

  # url "http://buildmonitor.wolfram.com/artifact/download/6982007/Files/M-OSX-WolframEngine-12.1.1-6982007.dmg"
  url "file:///Users/connorgray/Desktop/WolframEngine-12.1.1.dmg"
  name "Wolfram Engine"
  desc "Evaluator for the Wolfram Language"
  homepage "https://www.wolfram.com/engine/"

  depends_on macos: ">= :sierra"

  app "Wolfram Engine.app"

  zap trash: [
    "~/Library/WolframEngine",
    "~/Library/Caches/Wolfram"
  ]

  caveats do
    free_license "https://www.wolfram.com/engine/free-license/"
  end
end

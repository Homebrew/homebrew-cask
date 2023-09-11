cask "twelite-stage" do
  version "2022_08_30"
  sha256 "d848758cb89690200041ed910aacd2e7396148d86fbc30376af0e9b94a2af46f"

  url "https://mono-wireless.com/download/stage/MWSTAGE#{version}-mac.zip"
  name "TWELITE STAGE SDK"
  desc "Evaluation & Development tools for TWELITE wireless modules"
  homepage "https://mono-wireless.com/"

  livecheck do
    url "https://mono-wireless.com/jp/products/stage/Readme-j.html"
    regex(/MWSTAGE(20\d{2}_(?:0[1-9]|1[0-2])_(?:0[1-9]|[12][0-9]|3[01]))/i)
    strategy :page_match
  end

  depends_on macos: ">= :mojave"

  # It is an SDK with a shell-based application that includes source code and other user resources.
  # It is neither an "app" nor a "suite".
  artifact "MWSTAGE",
           target: "~/MWSTAGE"

  # Contains user resources such as source code
  uninstall trash: "~/MWSTAGE"

  # No zap stanza required, all resources are in ~/MWSTAGE
end

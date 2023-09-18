cask "twelite-stage" do
  version "2022_08_30"
  sha256 "d848758cb89690200041ed910aacd2e7396148d86fbc30376af0e9b94a2af46f"

  url "https://mono-wireless.com/download/stage/MWSTAGE#{version}-mac.zip"
  name "TWELITE STAGE SDK"
  desc "Evaluation & Development tools for TWELITE wireless modules"
  homepage "https://mono-wireless.com/"

  livecheck do
    url "https://mono-wireless.com/jp/products/stage/Readme-j.html"
    regex(/MWSTAGEv?(\d+(?:[._]\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  # It is an SDK with a shell-based application that
  # includes source code and other user resources.
  # It is neither an "app" nor a "suite".
  artifact "MWSTAGE", target: "~/MWSTAGE"

  zap trash: "~/MWSTAGE"
end

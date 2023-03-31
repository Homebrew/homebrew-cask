cask "touchdesigner" do
  arch arm: "arm64", intel: "intel"

  version "2022.32660"
  sha256 arm:   "4e8de832c79938d9b44266edb546044a7162416afd0a78fc83b59936f80a18f3",
         intel: "cfaecf4debf93142d29639c3debd9bf5581743d7fa4eba195bdfefd63ba2bbae"

  url "https://download.derivative.ca/TouchDesigner.#{version}.#{arch}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://derivative.ca/"

  livecheck do
    url "https://derivative.ca/download/archive"
    regex(/href=.*?TouchDesigner[._-]?v?(\d+(?:\.\d+)+)\.#{arch}\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "TouchDesigner.app"

  zap trash: [
    "~/Library/Application Support/Derivative/TouchDesigner099/",
    "~/Library/Saved Application State/ca.derivative.TouchDesigner.savedState/",
  ]
end

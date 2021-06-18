cask "transtype" do
  version "4,5099"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://fontlab.s3.amazonaws.com/transtype-4/5099/TR4MacFull-#{version.after_comma}.dmg",
      verified: "fontlab.s3.amazonaws.com/"
  name "TransType"
  homepage "https://www.fontlab.com/font-converter/transtype/"

  app "TransType #{version.before_comma}.app"
end

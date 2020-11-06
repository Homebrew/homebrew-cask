cask "transtype" do
  version "4,5099"
  sha256 :no_check # required as upstream package is updated in-place

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/transtype-4/5099/TR4MacFull-#{version.after_comma}.dmg"
  name "TransType"
  homepage "https://www.fontlab.com/font-converter/transtype/"

  app "TransType #{version.before_comma}.app"
end

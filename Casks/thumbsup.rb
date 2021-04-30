cask "thumbsup" do
  version "4.5.3"
  sha256 "05e1bbefd09e098eeb7faec29ea7556f76cf17b49be719af93e443d993beeb8c"

  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/thumbsup/#{version}/ThumbsUp.app.zip",
      verified: "s3.amazonaws.com/DTWebsiteSupport/"
  name "ThumbsUp"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url :homepage
    regex(%r{href=.*?/thumbsup/v?(\d+(?:\.\d+)+)/ThumbsUp\.app\.zip}i)
  end

  app "ThumbsUp.app"
end

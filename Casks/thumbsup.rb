cask "thumbsup" do
  version "4.5.3"
  sha256 "05e1bbefd09e098eeb7faec29ea7556f76cf17b49be719af93e443d993beeb8c"

  # s3.amazonaws.com/DTWebsiteSupport/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/thumbsup/#{version}/ThumbsUp.app.zip"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.devontechnologies.com/support/download&splitter_1=ThumbsUp&index_1=1&splitter_2=disabled&index_2=0"
  name "ThumbsUp"
  homepage "https://www.devontechnologies.com/apps/freeware"

  app "ThumbsUp.app"
end

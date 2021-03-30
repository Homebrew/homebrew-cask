# frozen_string_literal: true

cask "whalebird" do
  version "4.4.0"
  sha256 "d0c15c7364dcda0d3a7a5678120d3bc4e21342f75984be1f35b8f31e27dd7445"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-universal.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  name "Whalebird"
  desc "Mastodon, Pleroma and Misskey client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"
end

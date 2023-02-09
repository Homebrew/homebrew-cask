cask "website-watchman" do
  version "3.1.8"
  sha256 :no_check

  url "https://peacockmedia.software/mac/watchman/watchman.dmg"
  name "Website Watchman"
  desc "Monitor a whole website, part of a website or a single page"
  homepage "https://peacockmedia.software/mac/watchman/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)+)\s*released/i)
  end

  app "Website Watchman.app"
end

cask "texworks" do
  version "0.6.5,202003251937:649699a"
  sha256 "c171ad80782485f0bdd15a611fc234a94d38144fb2ee183ec50377338df5d690"

  # github.com/TeXworks/texworks/ was verified as official when first introduced to the cask
  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.before_comma}/TeXworks-osx-#{version.before_comma}-#{version.after_comma.before_colon}-git_#{version.after_colon}.dmg"
  appcast "https://github.com/TeXworks/texworks/releases.atom"
  name "TeXworks"
  desc "Main codebase"
  homepage "https://www.tug.org/texworks/"

  depends_on macos: ">= :high_sierra"

  app "TeXworks.app"
end

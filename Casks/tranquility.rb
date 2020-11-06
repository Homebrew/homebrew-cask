cask "tranquility" do
  version "1.1.2"
  sha256 "ce6a357595a1acc757e67961eb148ae75e0cdf7032ebb807c4b3fbadc4fd72e2"

  url "https://github.com/lswank/Tranquility/releases/download/#{version}/Tranquility.app.zip"
  appcast "https://github.com/lswank/Tranquility/releases.atom"
  name "Tranquility"
  desc "Night vision for programmers. Work well in the dark"
  homepage "https://github.com/lswank/Tranquility"

  app "Tranquility.app"
end

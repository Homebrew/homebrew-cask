cask "turtl" do
  version "0.7.2.6-sqlite-fix"
  sha256 "90085ffb3b97a3c5e6d01313fda6df4f74c7fe1b61b7c1388e54554db79c9a1a"

  url "https://github.com/turtl/desktop/releases/download/v#{version}/turtl-osx.zip",
      verified: "github.com/turtl/desktop/"
  name "turtl"
  homepage "https://turtlapp.com/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map { |tag| tag[/^v?(\d+(?:\.\d+)*.*)$/i, 1] }.compact
    end
  end

  app "Turtl.app"
end

cask "tidelift" do
  version "1.0.0"
  sha256 "6c369dc4577b0d345ea4e79204af7468b39392959612c49c69e4c1ed0f012896"

  url "https://download.tidelift.com/cli/#{version}/darwin/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/darwin/tidelift}i)
  end

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end
end

cask "tidelift" do
  version "1.12.13"
  sha256 "a521629390d136d84d1a04c7d9a36115c873cbbc56e4a285461072c06e298cf4"

  url "https://download.tidelift.com/cli/#{version}/darwin_homebrew/tidelift"
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

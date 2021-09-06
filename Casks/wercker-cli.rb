cask "wercker-cli" do
  version :latest
  sha256 :no_check

  url "https://s3.amazonaws.com/downloads.wercker.com/cli/stable/darwin_amd64/wercker",
      verified: "s3.amazonaws.com/downloads.wercker.com/"
  name "wercker"
  homepage "https://www.wercker.com/wercker-cli"

  container type: :naked

  binary "wercker"
end

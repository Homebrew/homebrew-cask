cask 'wercker-cli' do
  version :latest
  sha256 :no_check

  # amazonaws.com/downloads.wercker.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/downloads.wercker.com/cli/stable/darwin_amd64/wercker'
  name 'wercker'
  homepage 'https://www.wercker.com/wercker-cli'

  container type: :naked

  binary 'wercker'
end

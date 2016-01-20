cask 'wercker-cli' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/downloads.wercker.com/cli/stable/darwin_amd64/wercker'
  name 'wercker'
  homepage 'http://wercker.com/'
  license :mit

  container type: :naked

  binary 'wercker'

  postflight do
    set_permissions "#{staged_path}/wercker", '0755'
  end
end

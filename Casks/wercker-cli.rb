cask :v1 => 'wercker-cli' do
  version ':lastest'
  sha256 '3db5ec63989170414293af1c07fd83ec86d1d14c6b5413d2604f97ac771a5294'

  # The vendor use Amazon S3 storage service to deliver files over HTTP
  url 'https://s3.amazonaws.com/downloads.wercker.com/cli/stable/darwin_amd64/wercker'
  name 'wercker'
  name 'wercker-cli'
  homepage 'http://wercker.com/'
  license :unknown

  container :type => :naked
  binary 'wercker'

  postflight do
    set_permissions "#{staged_path}/wercker", '0755'
  end
end

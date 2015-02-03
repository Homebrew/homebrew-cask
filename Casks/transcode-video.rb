cask :v1 => 'transcode-video' do
  version '5.8'
  sha256 'fb3c1bd32cfd21315f2e911be8da69a2394c2a54af85d7d9ac45a5d92e3cc60c'

  url 'https://github.com/donmelton/video-transcoding-scripts/archive/master.zip'
  name 'Video Transcoding Scripts'
  homepage 'https://github.com/donmelton/video-transcoding-scripts/'
  license :mit

  binary 'video-transcoding-scripts-master/transcode-video.sh'

  depends_on :cask => 'handbrakecli',
             :formula => %w{
                            mkvtoolnix
                            mp4v2
                           }
end

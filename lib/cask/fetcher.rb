require 'open3'

class Cask::Fetcher
  TIMEOUT = 10

  def self.head(url)
    if url.to_s =~ /googlecode/
      googlecode_fake_head(url)
    else
      Cask::SystemCommand.run("curl",
                              :args => ["--max-time", TIMEOUT, "--silent", "--location", "--head", url]).stdout
    end
  end

  # google code does not properly respond to HTTP HEAD requests, like a jerk
  # this fakes a HEAD by doing a GET, taking the first 20 lines, then running away
  def self.googlecode_fake_head(url)
    command = "curl --max-time #{TIMEOUT} --verbose --location '#{url}' | head -n 20 > /dev/null"
    stderr = Open3.popen3(command) { |_, _, err, _| err.read }
    stderr.split("\n").grep(/^< /).map { |line| line.sub(/^< /, '') }.join("\n")
  end
end

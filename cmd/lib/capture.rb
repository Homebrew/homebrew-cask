require "pty"

def capture
  old_stdout = $stdout.dup
  old_stderr = $stderr.dup

  PTY.open do |r, w|
    $stdout.reopen(w)
    $stderr.reopen(w)

    thread = Thread.new do
      yield
    ensure
      w.close
    end
    thread.abort_on_exception = true

    output = ""

    loop do
      selected = IO.select([r], [], [], 1)

      if (reader = selected&.dig(0, 0))
        output << (reader.readline_nonblock || "")
      elsif w.closed?
        break
      end
    rescue IO::WaitReadable
      retry
    end

    result = thread.value

    [result, output]
  end
ensure
  $stdout.reopen(old_stdout)
  $stderr.reopen(old_stderr)
end

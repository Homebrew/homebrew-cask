class IO
  def readline_nonblock(sep = $INPUT_RECORD_SEPARATOR)
    buffer = ""
    buffer.concat(read_nonblock(1)) while buffer[-1] != sep
    buffer
  rescue IO::WaitReadable, EOFError => e
    raise e if buffer.empty?
    buffer
  end
end

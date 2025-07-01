class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"

  if OS.mac?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v1.2.8/ccflock"
    sha256 "9767fe6b4240aa2c4dd7d1053d020c531978050bbe7ec28a63a43cc034f4ccde"
  elsif OS.linux?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v0.0.1-linux/ccflock"
    sha256 "9f44584ac1c548621885809e7f4e6cc423b3a71dc1d124bb608379ee0d2f3b0e"
  end

  version "0.0.1"

  def install
    bin.install "ccflock"
  end

  test do
    system "#{bin}/ccflock", "--help"
  end
end

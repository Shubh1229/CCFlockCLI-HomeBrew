class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"

  if OS.mac?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v1.1.3/ccflock"
    sha256 "9767fe6b4240aa2c4dd7d1053d020c531978050bbe7ec28a63a43cc034f4ccde"
  elsif OS.linux?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v0.0.1-linux/ccflock"
    sha256 "0f0c2b8dbb870acd62244431fe7353a397377f976fc5e361111a71f5c3504752"
  end

  version "0.0.1"

  def install
    bin.install "ccflock"
  end

  test do
    system "#{bin}/ccflock", "--help"
  end
end

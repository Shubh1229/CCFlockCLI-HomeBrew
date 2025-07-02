class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"

  if OS.mac?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v1.2.8/ccflock"
    sha256 "9f44584ac1c548621885809e7f4e6cc423b3a71dc1d124bb608379ee0d2f3b0e"
  elsif OS.linux?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v0.0.1-linux/ccflock"
    sha256 "0f0c2b8dbb870acd62244431fe7353a397377f976fc5e361111a71f5c3504752"
  end

  version "0.0.1"

  def installMore actions
    bin.install "ccflock"
  end

  test do
    system "#{bin}/ccflock", "--help"
  end
end

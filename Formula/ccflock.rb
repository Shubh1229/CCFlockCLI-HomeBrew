class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"

  if OS.mac?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v0.1.1/ccflock"
    sha256 "2d30dd6a8a8f81ea495872d4caef8fc1dfb1d1c00f7a4ffb0958542ee5e28afa"
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

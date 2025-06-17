class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"

  if OS.mac?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v0.1.1/ccflock"
    sha256 "e88a1607e23d6547fdb4e4cd71a6f7b31f531f5a92d358c2ab4fe7c774959a87"
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

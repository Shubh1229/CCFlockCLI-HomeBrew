class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"
  url "https://github.com/Shubh1229/ccflock-cli/releases/download/v0.1.0/ccflock"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "0.1.0"

  def install
    bin.install "ccflock"
  end

  test do
    system "#{bin}/ccflock", "--help"
  end
end

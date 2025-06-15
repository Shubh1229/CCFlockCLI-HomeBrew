class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"
  url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v0.0.1/ccflock"
  sha256 "804227f54635e855f2d96ca5dc7092e2096b64f3d5fd36e3382f80f2f8f1ba64"
  version "0.0.1"

  def install
    bin.install "ccflock"
  end

  test do
    system "#{bin}/ccflock", "--help"
  end
end

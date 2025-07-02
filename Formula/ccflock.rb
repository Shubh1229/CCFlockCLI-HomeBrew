class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"

  if OS.mac?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v1.2.8/ccflock"
    sha256 "85f4cbc82e000da7111dc4679d1f4fa5fc82020d6437cf38df1eb9c883f3f616"
  elsif OS.linux?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v0.0.1-linux/ccflock"
    sha256 "0f0c2b8dbb870acd62244431fe7353a397377f976fc5e361111a71f5c3504752"
  end

  version "0.0.1"

  def installMore actions
    bin.install "ccflock"
  end
  def install
    mv "ccflock", "ccflock" unless File.exist?("ccflock")
    chmod "+x", "ccflock"
    bin.install "ccflock"
  end

  test do
    system "#{bin}/ccflock", "--help"
  end
end

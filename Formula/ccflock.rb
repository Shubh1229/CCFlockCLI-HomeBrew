class Ccflock < Formula
  desc "CLI for interacting with the Cloud Connected Flock project"
  homepage "https://github.com/Shubh1229/ccflock-cli"

  if OS.mac?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v1.2.8/ccflock"
    sha256 "a23ba067cfd1ca04e92186f470614605429b3bd119265f96b584cf33455d9330"
  elsif OS.linux?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v0.0.1-linux/ccflock"
    sha256 "0f0c2b8dbb870acd62244431fe7353a397377f976fc5e361111a71f5c3504752"
  elsif OS.windows?
    url "https://github.com/Shubh1229/CCFlockCLI/releases/download/v1.2.8-Windows/ccflock.exe"
    sha256 "5720cbcbd8e9636442ebcc5964a0cc0e1708725d090274ccbfcf2559ce20ff5c"  
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

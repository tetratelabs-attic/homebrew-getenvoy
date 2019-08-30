# This file was generated by GoReleaser. DO NOT EDIT.
class Getenvoy < Formula
  desc "Distribute, deploy and operate a fleet of Envoys"
  homepage "https://github.com/tetratelabs/getenvoy"
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tetratelabs/getenvoy/releases/download/v0.1.3/getenvoy_0.1.3_Darwin_x86_64.tar.gz"
    sha256 "7a382e841968dfe694a7b99d0613d7b38fcb0b319a83684e05fc0384ad70e1ff"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tetratelabs/getenvoy/releases/download/v0.1.3/getenvoy_0.1.3_Linux_x86_64.tar.gz"
      sha256 "f9ba123b9a3e511ae1f25d77575a9956ff5d91bb75b73a9e921e33afcbb8d8ec"
    end
  end

  def install
    bin.install "getenvoy"
  end

  test do
    system "#{bin}/getenvoy --help"
  end
end

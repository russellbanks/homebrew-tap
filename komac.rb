class Komac < Formula
  desc "Komac - Community MAnifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.3/KomacPortable-macos-2.0.3-x64.tar.gz"
      sha256 "dcd8f56cff603693514353bdd3c82e48857be2506a869f3c759004f203a3ca91"

      def install
        bin.install "KomacPortable-macos-2.0.3-x64" => "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.3/KomacPortable-macos-2.0.3-arm64.tar.gz"
      sha256 "c6dc49bcac783d9b73b309687423a47797c02bb201275d6beacb2ae5dd7aede0"

      def install
        bin.install "KomacPortable-macos-2.0.3-arm64" => "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.3/KomacPortable-linux-2.0.3-x64.tar.gz"
      sha256 "5323101c7df6e87e9e5a3c8843a552f9b49c6c2bcef4a380158aaf499b3cc5e0"

      def install
        bin.install "KomacPortable-linux-2.0.3-x64" => "komac"
      end
    end
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.3/KomacPortable-linux-2.0.3-x86.tar.gz"
      sha256 "ed97a5557ed2292dbeb436d96f014adec93fe05e85011c9781d8aee8f595cd9c"

      def install
        bin.install "KomacPortable-linux-2.0.3-x86" => "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.3/KomacPortable-linux-2.0.3-arm64.tar.gz"
      sha256 "b8a3ec0a4940e6cef83085071f30509744b6e264915fa4ed492d0e247ae5e9d7"

      def install
        bin.install "KomacPortable-linux-2.0.3-arm64" => "komac"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.3/KomacPortable-linux-2.0.3-armv7.tar.gz"
      sha256 "0b9e56a5ec2260ba97171a1d5c7d544a1278ab24617f34166c23a3928c36a21c"

      def install
        bin.install "KomacPortable-linux-2.0.3-armv7" => "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

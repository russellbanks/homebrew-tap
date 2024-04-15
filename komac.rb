class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.1/KomacPortable-macos-x64.tar.gz"
      sha256 "3c643e4a321ccaba8795c6ee85ab6126f71bb4d10c4046e6a04c5c35bc5a86c8"

      def install
        bin.install "KomacPortable-macos-x64" => "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.1/KomacPortable-macos-arm64.tar.gz"
      sha256 "e12e192a6510a15be2f9d5fa89c9acb506f9c56ea69a7355e56aea11ba00c968"

      def install
        bin.install "KomacPortable-macos-arm64" => "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.1/KomacPortable-linux-x64.tar.gz"
      sha256 "4d0530246a7e867166bc728c4128832765c24dc6ca197cbad99dc983fabd2f81"

      def install
        bin.install "KomacPortable-linux-x64" => "komac"
      end
    end
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.1/KomacPortable-linux-x86.tar.gz"
      sha256 "c15017a2347bca466d252d6f9d7933010c3aa53aa6dcff240b9019a3d784e732"

      def install
        bin.install "KomacPortable-linux-x86" => "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.1/KomacPortable-linux-arm64.tar.gz"
      sha256 "<SHA256-linux-arm64>"

      def install
        bin.install "KomacPortable-linux-arm64" => "komac"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.1/KomacPortable-linux-armv7.tar.gz"
      sha256 "<SHA256-linux-armv7>"

      def install
        bin.install "KomacPortable-linux-armv7" => "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

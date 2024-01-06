class Komac < Formula
  desc "KOtlin MAnifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.0/KomacPortable-macos-2.0.0-x64.tar.gz"
      sha256 ""

      def install
        bin.install "KomacPortable-macos-2.0.0-x64" => "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.0/KomacPortable-macos-2.0.0-arm64.tar.gz"
      sha256 ""

      def install
        bin.install "KomacPortable-macos-2.0.0-arm64" => "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.0/KomacPortable-linux-2.0.0-x64.tar.gz"
      sha256 ""

      def install
        bin.install "KomacPortable-linux-2.0.0-x64" => "komac"
      end
    end
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.0/KomacPortable-linux-2.0.0-x86.tar.gz"
      sha256 ""

      def install
        bin.install "KomacPortable-linux-2.0.0-x86" => "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.0/KomacPortable-linux-2.0.0-arm64.tar.gz"
      sha256 ""

      def install
        bin.install "KomacPortable-linux-2.0.0-arm64" => "komac"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.0/KomacPortable-linux-2.0.0-armv7.tar.gz"
      sha256 ""

      def install
        bin.install "KomacPortable-linux-2.0.0-armv7" => "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

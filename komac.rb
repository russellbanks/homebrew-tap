class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.10.0/komac-2.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "9037f4c2dfcc7a5c1936c36ecc29f686146114a10da3f5a487541ad1263c106d"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.10.0/komac-2.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "67c8f77cb72f1922ad2a65dbf814e35977ddba97603a2774b8bace21206375b6"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.10.0/komac-2.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "523a5c4d685741f540a403e329581ab42c30e2db9b3dd1dd90389f7eefe8a3ba"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.10.0/komac-2.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53985070b0db067b53740d9834d1a5b922c382f51b9c3264978d457927f028ab"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

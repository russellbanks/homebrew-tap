class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.10.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.10.1/komac-2.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "61a93c8022fb8d3b45321b77d7a1bbca0c1ad4440baca16428ca4e7d9a4649af"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.10.1/komac-2.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "e4774e01d42987874d4f819c1f26269666acf57ea056487522905669c6e2f8fc"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.10.1/komac-2.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36dbd38e130873560245a96d30fe270242c4a60d94ef9a35c3304121e59a125a"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.10.1/komac-2.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0a922d62cc9703c9254369ae3471bc09ce61158f6fa5200d4e773dec65da669"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

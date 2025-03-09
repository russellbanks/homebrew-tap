class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.0/komac-2.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "f20a3e932a78d211517671bfd965bcfcb0a0245fdff60ac222b8433e1348f65c"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.0/komac-2.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa0e3a0a0919637beb60c3eced2c93e0fcfa1a06c91e4c7207fd0f0854b37aba"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.0/komac-2.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b44c64251e2003aaa570e08f1de1413230068f41eedcf699b537115cfde63a0"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.0/komac-2.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60957cdbab335c280f5c01d5832acf2941fbd38fda37bf6eb246b4d8bc148fab"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

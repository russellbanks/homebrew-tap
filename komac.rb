class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.12.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.12.1/komac-2.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "2bdb94382c4b695b4ed21d38474a7a9c0b95bf978fb6be82c2ecd87786598c74"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.12.1/komac-2.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "c5194b520261fe82faeb09830bb396ea7994c2517cb036ecc3251cfc319f3f33"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.12.1/komac-2.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af9ea6508aba4d45fb236cc2f2e3487091af75004ecca2e519cf6481cea3cd12"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.12.1/komac-2.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7510222a6d619666db7f7376592042a3978ea2f2519c521e111b5e93b459b1bc"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

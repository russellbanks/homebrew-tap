class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.5.0/komac-2.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "6b4d8e8317fc199419bd0735621772a2ecc341d2c3345d1357450eff360acfff"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.5.0/komac-2.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "fdddfbcae8addbbf510f771e06a7ae27271cb8730efab7c0f38d45e36d8b3516"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.5.0/komac-2.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49fb032eeee7a4d47a329e34a145466433156513e3b8e0a620e7532b44896b1b"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.5.0/komac-2.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6dc68929cc154f26a70577d2d3b3f2d554a587b232841a9b80274454fb11bd70"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

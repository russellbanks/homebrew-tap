class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.12.0/komac-2.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "f9a101c43c828877700ea87dc513a70231a2fc2f216853272951ffcb0798be4d"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.12.0/komac-2.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0a416132cb4ac0a6ebf8e2ba37e6365cc03f4684de2c64644a9cf3d7e0e8fbc"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.12.0/komac-2.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b275d7d2d5125bb0329782e89018d2f0764424f56de8ebaed3d8fe27f4cd0d94"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.12.0/komac-2.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e94724b1b4c294481e2a5b5876438f1309856cfecdc44f0e541547df0f9dbdb9"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

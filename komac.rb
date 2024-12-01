class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.7.0/komac-2.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "2478799a759397aa4592649a39d741e03dd8f8456d576ea929138fc20368eca5"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.7.0/komac-2.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "81d31df3c7818f45b4207d7af5648b4e312478f416d312451beceee0637b70ae"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.7.0/komac-2.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3314b203b5ff4c897d8eb280ff58945244b1fde7b2250d868adc0d98fcd6f8c"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.7.0/komac-2.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb1c272108c4448c307162455e33b973e3ef24257edd6bb49adb888e3015634e"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

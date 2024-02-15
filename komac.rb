class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.4/KomacPortable-macos-x64.tar.gz"
      sha256 "e2a1ca0e9f25c857cd0a12d995ca95c218f3cf64e579e65efe02455034e47c96"

      def install
        bin.install "KomacPortable-macos-x64" => "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.4/KomacPortable-macos-arm64.tar.gz"
      sha256 "7080fd172674cd274ab562a2c39eb7b97180264d31bf45d38a074052156c8e78"

      def install
        bin.install "KomacPortable-macos-arm64" => "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.4/KomacPortable-linux-x64.tar.gz"
      sha256 "50b625943a4424d768a5ba14961e44b860d14639b25eed472df1bd8c557b43c7"

      def install
        bin.install "KomacPortable-linux-x64" => "komac"
      end
    end
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.4/KomacPortable-linux-x86.tar.gz"
      sha256 "eb0ab67841013c8abd6f9e38fba9a8805ed453ae5827ff7914fe69a18c5b6ce5"

      def install
        bin.install "KomacPortable-linux-x86" => "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.4/KomacPortable-linux-arm64.tar.gz"
      sha256 "d2e268676d9ce1b3019873e6988abaa2df39767ea895ce43f8e303b1b798ad5e"

      def install
        bin.install "KomacPortable-linux-arm64" => "komac"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.0.4/KomacPortable-linux-armv7.tar.gz"
      sha256 "6b54dae34a1d5539a8e3567cdc91d006ea66f1dce4748a0b651b3480fda1baa7"

      def install
        bin.install "KomacPortable-linux-armv7" => "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end

  class Qwc < Formula
    desc "A utility to count things. Quickly."
    homepage "https://github.com/KroqueJa/qwc"
    version "0.3.0"
    license "MIT"

    on_macos do
      on_arm do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-macos-arm64.tar.gz"
        sha256 "a0cb1479d409b97ae2d123a18668efd85053955e0c025e6f7e2d7dedb19bac26"
      end
    end

    on_linux do
      on_intel do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-linux-x86_64.tar.gz"
        sha256 "fc87a31b07a6cb40b32a49ccbf6b883f94de9962777ab5e52771de9b7bd51b75"
      end
    end
  
    def install
      bin.install "qwc"
    end

    test do
      assert_match "qwc", shell_output("#{bin}/qwc --version")
    end
  end

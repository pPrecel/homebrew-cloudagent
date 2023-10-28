# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PkupGen < Formula
  desc "Simple tool to generate PKUP artifacts."
  homepage "http://github.com/pPrecel/pkup-gen"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/pkup-gen/releases/download/3.2.0/pkup-gen_3.2.0_darwin_amd64.tar.gz"
      sha256 "92e4afcc8d50ae143229792e68e1d30c034704a6214b283672505aba3df6a26c"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pPrecel/pkup-gen/releases/download/3.2.0/pkup-gen_3.2.0_darwin_arm64.tar.gz"
      sha256 "cd438dd8aa08cefb607b67d154b1505730c10da1e1c90ee2710d7d6e3aa3b536"

      def install
        bin.install "pkup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pPrecel/pkup-gen/releases/download/3.2.0/pkup-gen_3.2.0_linux_amd64.tar.gz"
      sha256 "b0478b30f13c7f8d887cf3d15cb2cd3537d22def8d3530ae18c58b0a436288bb"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/pkup-gen/releases/download/3.2.0/pkup-gen_3.2.0_linux_armv7.tar.gz"
      sha256 "73fad161a6c1ad51d41300a957b5f0282b4d09cd0da1c0b2337807d89515bf7d"

      def install
        bin.install "pkup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pPrecel/pkup-gen/releases/download/3.2.0/pkup-gen_3.2.0_linux_arm64.tar.gz"
      sha256 "170fa31cba64a430013d258afda76c47f25c0f72c3c166adf475fdb9e2923bee"

      def install
        bin.install "pkup"
      end
    end
  end

  test do
    system "#{bin}/pkup"
  end
end

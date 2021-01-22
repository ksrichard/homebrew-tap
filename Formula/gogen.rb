# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gogen < Formula
  desc "Simple yet powerful dynamic project generation"
  homepage "https://github.com/ksrichard/gogen"
  version "0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ksrichard/gogen/releases/download/0.3/gogen_0.3_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
    sha256 "ee860a8fe882ddbb87283f51c4c5a3549dd5064c516c1cf32a5b7174086084b3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ksrichard/gogen/releases/download/0.3/gogen_0.3_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
    sha256 "100b70f9dff80f487c4ac62f9afbf3ffb527e698d8bbeab7e66bfd02bd88f233"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/ksrichard/gogen/releases/download/0.3/gogen_0.3_Linux_armv6.tar.gz", :using => CurlDownloadStrategy
    sha256 "ce0c2772d1b4d845d7d4cd45ffe585d4d09d5e60f52b8126c7c9a768bdee5957"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ksrichard/gogen/releases/download/0.3/gogen_0.3_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "13ed5792de596b8c00bba9707cd5a963f1dfa4083fac8a7f90863dde42fb8573"
  end

  def install
    bin.install "gogen"
  end

  def caveats; <<~EOS
    ./gogen generate --help Generating projects/folder structures based on a template
    Usage: gogen generate [flags]
    Flags: -h, --help                  help for generate -o, --output-dir string     Output folder where result files will be generated -t, --template-dir string   Template folder to be used for generation -v, --vars stringToString   Variables for generation (default [])
  EOS
  end
end

# Copyright 2019 Tetrate Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envoy < Formula
    desc "Certified, compliant and conformant builds of Envoy proxy"
    homepage "https://getenvoy.io"
    url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.11.2.p0.g7a12f37-1p42.gb8451b1-darwin-release-x86_64.tar.xz"
    version "1.11.2"
    sha256 "d8529eba10f7e5038c5b937cb6bca720f1ef97cd666a7908cddbf2c25349bb40"

    head do
        url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.12.0.dev.p518.g48c7c20-1p42.gb8451b1-darwin-release-x86_64.tar.xz"
        sha256 "526e71c4f8a4cf1c195c01f8959702e522e5752f39bf8f05f5adf6ff2c07b6aa"
    end

    stable do
        url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.11.2.p0.g7a12f37-1p42.gb8451b1-darwin-release-x86_64.tar.xz"
        sha256 "d8529eba10f7e5038c5b937cb6bca720f1ef97cd666a7908cddbf2c25349bb40"
    end

    bottle :unneeded

    def install
        bin.install "bin/envoy"
    end

    test do
        # TODO(dio): more tests, e.g. CVE tests.
        assert_match /clean-getenvoy/, %x('#{bin}/envoy --version')
    end
end

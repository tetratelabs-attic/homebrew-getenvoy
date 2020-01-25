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
    url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.12.0.p0.gab30caf-1p45.gf13ee1c-darwin-release-x86_64.tar.xz"
    version "1.13.0"
    sha256 "f569acc0cd71ef38f205be22b9f605bd5099c1b82af8c61a7227d1a3ea4c8a0c"

    head do
        url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.12.0.p0.gab30caf-1p45.gf13ee1c-darwin-release-x86_64.tar.xz"
        sha256 "f569acc0cd71ef38f205be22b9f605bd5099c1b82af8c61a7227d1a3ea4c8a0c"
    end

    stable do
        url "http://dl.bintray.com/tetrate/getenvoy/getenvoy-envoy-1.12.0.p0.gab30caf-1p45.gf13ee1c-darwin-release-x86_64.tar.xz"
        sha256 "f569acc0cd71ef38f205be22b9f605bd5099c1b82af8c61a7227d1a3ea4c8a0c"
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

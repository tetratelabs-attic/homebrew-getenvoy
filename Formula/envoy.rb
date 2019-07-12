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
    url "https://tetrate.bintray.com/getenvoy-homebrew-tap/getenvoy-1.11.0-bf169f9-af8a2e7-darwin-release-x86_64.tar.gz"
    version "1.11.0"
    sha256 "b7f9efcdb15932cc5d3a581d1fbbe987548da66b9d582fc79af4ba46635a1ce7"

    head do
        url "https://tetrate.bintray.com/getenvoy%3Aplatform%3Adarwin/getenvoy-1.12.0-dev-74e3487-af8a2e7-darwin-release-x86_64.tar.gz"
        sha256 "847ffbb57afc1283e13260cbe043b1721315da54a9504bfffb6c682d4ac22f4a"
    end

    stable do
        url "https://tetrate.bintray.com/getenvoy-homebrew-tap/getenvoy-1.11.0-bf169f9-af8a2e7-darwin-release-x86_64.tar.gz"
        sha256 "b7f9efcdb15932cc5d3a581d1fbbe987548da66b9d582fc79af4ba46635a1ce7"
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

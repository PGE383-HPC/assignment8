#!/usr/bin/env julia

# Copyright 2022 John T. Foster
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
import assignment8
using Test

@testset "assignment8.jl" begin
    @test assignment8.add_positional_arguments(1, 2, 3.0) ≈ 6.0
    @test assignment8.add_positional_arguments(1, 2) ≈ 5.0
    @test assignment8.Σ(2, 2, 2) ≈ 6.0
    @test assignment8.Σ(2, 2) ≈ 6.0
    @test assignment8.add_keyword_arguments(a=1, b=2, c=3) ≈ 6.0
    @test assignment8.add_keyword_arguments() ≈ 6.0
    @test assignment8.add_keyword_arguments(a=1, b=2) ≈ 6.0
    f = assignment8.return_anonymous_function()
    @test f(2.0) ≈ 5.0
end

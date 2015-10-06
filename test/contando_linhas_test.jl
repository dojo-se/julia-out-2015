include("..\\src\\contando_linhas.jl")

module ContandoLinhaTeste
  include("error_handler_pt_br.jl")
end

using Base.Test

import ContandoLinhas

Test.with_handler(custom_handler) do
  @test soma(1,2) == 3
end

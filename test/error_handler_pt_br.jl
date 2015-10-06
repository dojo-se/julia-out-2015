module ErrorHandler end

import Base.Test

custom_handler(r::Test.Success) = println("Teste '$(r.expr)' executado com sucesso")

custom_handler(r::Test.Failure) = error("Teste '$(r.expr)' falhou. $(r)")

custom_handler(r::Test.Error) = rethrow(r);

export custom_handler

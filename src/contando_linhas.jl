module ContandoLinhas end

export tratarLinha

reg_comentario = r"(\/\*[\w\'\s\r\n\*]*\*\/)|(\/\/.*)"ims

tratarLinha(str::String) = ismatch(reg_comentario, str) ? 0 : 1

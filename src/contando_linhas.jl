module ContandoLinhas end

export tratarLinha

non_comment_regex = r"^[^\/]+"
reg_comentario = r"(\/\*[\w\'\s\r\n\*]*\*\/)|(\/\/.*)"

tratarLinha(str::String) = ismatch(reg_comentario, str) ? 0 : 1

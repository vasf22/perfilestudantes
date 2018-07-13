##informacoes base ssa1

SELECT a.numero_inscricao, b.id_usuario, a.cancelada, a.cotista, a.cotista_confirmado, a.idioma, a.inscricao_confirmada,
a.id_cidade_candidato, a.id_concurso, a.eliminada, b.data_nascimento, b.naturalidade, b.sexo, c.cidade, c.uf, d.nota_peso,
d.nota_peso_biologia, d.nota_peso_filosofia, d.nota_peso_fisica, d.nota_peso_geografia, d.nota_peso_historia,
d.nota_peso_lingua_estrangeira, d.nota_peso_matematica, d.nota_peso_portugues, d.nota_peso_quimica, d.nota_peso_sociologia,
e.situacao_dia1, e.situacao_dia2 
FROM inscricao.inscricaossa1 a, acesso.usuario b, acesso.endereco c, notas.quadro_notas_ssa1 d, notas.cartao_resposta_ssa1 e 
WHERE a.id_usuario = b.id_usuario AND a.inscricao_confirmada = true and a.eliminada = false and a.cancelada = false 
AND b.id_endereco = c.id_endereco AND d.id_quadro_notas_ssa1 = e.id_quadro_notas_ssa1 
AND e.situacao_dia1 = 'V' and e.situacao_dia2 = 'V' AND a.id_inscricao = e.id_inscricao ORDER BY b.id_usuario


##informacoes base ssa2

SELECT a.numero_inscricao, b.id_usuario, a.cancelada, a.cotista, a.cotista_confirmado, a.idioma, a.inscricao_confirmada,
a.id_cidade_candidato, a.id_concurso, a.eliminada, b.data_nascimento, b.naturalidade, b.sexo, c.cidade, c.uf, d.nota_peso,
d.nota_peso_biologia, d.nota_peso_filosofia, d.nota_peso_fisica, d.nota_peso_geografia, d.nota_peso_historia,
d.nota_peso_lingua_estrangeira, d.nota_peso_matematica, d.nota_peso_portugues, d.nota_peso_quimica, d.nota_peso_sociologia,
e.situacao_dia1, e.situacao_dia2 
FROM inscricao.inscricaossa2 a, acesso.usuario b, acesso.endereco c, notas.quadro_notas_ssa2 d, notas.cartao_resposta_ssa2 e 
WHERE a.id_usuario = b.id_usuario AND a.inscricao_confirmada = true and a.eliminada = false and a.cancelada = false 
AND b.id_endereco = c.id_endereco AND d.id_quadro_notas_ssa2 = e.id_quadro_notas_ssa2 
AND e.situacao_dia1 = 'V' and e.situacao_dia2 = 'V' AND a.id_inscricao = e.id_inscricao ORDER BY b.id_usuario

##informacoes base ssa3

SELECT a.id_usuario, a.numero_inscricao from inscricao.inscricaossa3 JOIN inscricao.questionario b on a.id_usuario = b.id_usuario

######################################################################################################################################

SELECT a.numero_inscricao, b.id_usuario, a.cancelada, a.cotista, a.cotista_confirmado, a.idioma, a.inscricao_confirmada,
a.id_cidade_candidato, a.id_concurso, a.eliminada, b.data_nascimento, b.naturalidade, b.sexo, h.etnia, c.cidade, c.uf, d.nota_peso,
d.nota_peso_biologia, d.nota_peso_filosofia, d.nota_peso_fisica, d.nota_peso_geografia, d.nota_peso_historia,
d.nota_peso_lingua_estrangeira, d.nota_peso_matematica, d.nota_peso_portugues, d.nota_peso_quimica, d.nota_peso_sociologia,
e.situacao_dia1, e.situacao_dia2, f.id_curso, f.nome, f.cidade, i.nome, i.municipio, i.regiao, h.cursinho_gratuito, h.escola_ensino_fundamental, h.escola_ensino_medio,
h.estado_civil, h.estado_residencia, h.frequenta_cursinho, h.horario_trabalho, h.idade, h.instrucao_mae, h.instrucao_pai,
h.ja_trabalhou, h.lazer_preferido, h.motivo_opcao_upe, h.opcao_curso, h.outro_cursinho_gratuito, h.regiao_residencia,
h.renda_familiar 
FROM inscricao.inscricaossa3 a, acesso.usuario b, acesso.endereco c, notas.quadro_notas_ssa3 d, 
notas.cartao_resposta_ssa3 e, inscricao.curso f, inscricao.questionario h, inscricao.escola i
WHERE a.id_usuario = b.id_usuario AND a.inscricao_confirmada = true and a.eliminada = false and a.cancelada = false 
AND b.id_endereco = c.id_endereco AND d.id_quadro_notas_ssa3 = e.id_quadro_notas_ssa3 
AND e.situacao_dia1 = 'V' and e.situacao_dia2 = 'V' AND a.id_inscricao = e.id_inscricao AND a.id_usuario = h.id_usuario 
AND a.id_escola_3ano = i.id_escola AND a.id_curso = f.id_curso ORDER BY b.id_usuario











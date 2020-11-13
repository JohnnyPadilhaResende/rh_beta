json.extract! curso, :id, :nome, :string, :cdg_ordem_instrutor, :data_inicio, :data_fim, :numero_vagas, :numero_vagas_ocupadas, :nota, :created_at, :updated_at
json.url curso_url(curso, format: :json)

:::::NOVA APP USANDO JUMPSTART:::::

:::::POSTGRES::::::
sudo -u postgres psql
create database rh_core;
create user rh_user with encrypted password 'rh123';
grant all privileges on database rh_core to rh_user;
sudo vim /etc/postgresql/10/main/pg_hba.conf
trocar a todos "peer" por "md5"
sudo service postgresql restart
:::::POSTGRES::::::

:::::PREPARANDO TEMPLATE JUMPSTART::::::
gem install bundler --no-ri --no-rdoc
gem install rails --no-ri --no-rdoc
brew install yarn
gem install foreman --no-ri --no-rdoc
:::::PREPARANDO TEMPLATE JUMPSTART::::::

:::::NEW APP::::::
rails new rh_beta -T -d postgresql -m https://raw.githubusercontent.com/excid3/jumpstart/master/template.rb
comentar a linha do "sidekiq" no aquivo Procfile.dev na rails
rake db:migrate
foreman start
:::::NEW APP::::::

::::INFLECTIONS::::
app/config/initializers/inflections.rb
inflect.plural 'instrucao', 'instrucoes'
::::INFLECTIONS::::

::::MIGRATIONS::::
rails g migration create_schema_core
create_schema(:core)

rails g scaffold core/pessoal cdg_ordem:integer nmr_cpf:integer nme_pessoa:string sexo:integer dta_nascimento:date --no-helper --no-assets --no-test-framework
self.table_name = "core.pessoal"

rails g scaffold core/funcional cdg_funcao:integer cdg_ordem:integer cdg_funcional:integer status:integer ref_anomes:integer dta_admissao:date --no-helper --no-assets --no-test-framework
self.table_name = "core.funcional"

rails g scaffold core/enderecos cdg_ordem:integer nme_logradouro:string cdg_logradouro:integer nmr_lote:integer nmr_quadra:integer desc_complemento:string nmr_cep:integer --no-helper --no-assets --no-test-framework
self.table_name = "core.enderecos"

rails g scaffold core/contatos cdg_ordem:integer end_telefone:integer end_email:string --no-helper --no-assets --no-test-framework
self.table_name = "core.contatos"

rails g scaffold core/instrucao cdg_grau_instrucao:integer nme_curso:string nme_instituicao_ensino:string --no-helper --no-assets --no-test-framework
self.table_name = "core.instrucao"

rake db:migrate
::::MIGRATIONS::::


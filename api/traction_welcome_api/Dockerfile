FROM ruby:2.5.5

# Conserta problema de locale na imagem de Ruby
ENV LANG C.UTF-8

# Adiciona dependência do Postgresql
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Atualiza pacotes e instala build-essential para compilar dependências
RUN apt-get update -qq && apt-get install -y build-essential

# Instala dependências da gem nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# Instala ambiente de execução de JavaScript (necessário para gerar assets)
RUN apt-get install -y nodejs

# Instala o client do Postgres
RUN apt-get install -y postgresql-client-9.6

# Configura o diretório da aplicação no container
ENV APP_HOME /traction_welcome_api
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Instala gems em um volume com persistência de dados
ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile BUNDLE_JOBS="$(nproc)" BUNDLE_PATH=/bundle

# Adiciona caminhos dos binários da aplicação no PATH
ENV PATH $APP_HOME/bin:$BUNDLE_PATH/bin:$PATH

# Desabilita Spring
ENV DISABLE_SPRING "1"

# Disponibiliza o repositório da aplicação para o container
ADD . $APP_HOME

RUN bundle install

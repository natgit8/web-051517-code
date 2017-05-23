require 'bundler/setup'
Bundler.require(:default, :development)
require 'pry'

require_relative 'sql_runner'
require_relative '../lib/pokemon'

@pokemon_db = SQLite3::Database.new('./db/pokemon.db')

@sql_runner = SQLRunner.new(@pokemon_db)
@sql_runner.execute_schema_migration_sql

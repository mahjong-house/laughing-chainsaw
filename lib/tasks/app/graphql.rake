if Rails.env.development?
  require "graphql/schema_comparator"

  namespace :app do
    namespace :graphql do
      task check_schema: :environment do
        schema_file_name = Rails.root.join("app", "graphql", "schema.graphql")

        previous_schema = File.read(schema_file_name)

        Rake::Task["graphql:schema:idl"].invoke

        current_schema = File.read(schema_file_name)

        changes = GraphQL::SchemaComparator.compare(previous_schema, current_schema)

        unless changes.identical?
          puts "GraphQL schema has changed. Please commit the changes in app/graphql/schema.graphql as well."
          abort
        end
      end
    end
  end
end

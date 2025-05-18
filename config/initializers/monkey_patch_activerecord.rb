# PostgreSQL13>で使えるFORCEオプションを使用してコネクションがあってもDROP DATABASEできるようにする
ActiveSupport.on_load(:active_record) do
  ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.prepend(
    Module.new do
      def drop_database(name)
        execute "DROP DATABASE IF EXISTS #{quote_table_name(name)} WITH (FORCE)"
      end
    end
  )
end

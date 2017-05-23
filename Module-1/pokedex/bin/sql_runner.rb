class SQLRunner

  def execute_sql(sql)
     sql.scan(/[^;]*;/m).each { |line| @db.execute(line) } unless sql.empty?
  end
end

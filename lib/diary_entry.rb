require 'pg'

class DiaryEntry
  COLUMNS = "(title, entry)"

  def initialize(diary_title, diary_entry)
    @diary_title = diary_title
    @diary_entry = diary_entry
    add
  end

  def add
    connection = PG.connect :dbname => 'diary_manager'

    values = "('#{@diary_title}', '#{@diary_entry}')"
    statement = "INSERT INTO diary_entries #{COLUMNS} VALUES #{values}"
    results = connection.exec(statement)
  end

  def display
    connection = PG.connect :dbname => 'diary_manager'

    statement = "SELECT * FROM diary_entries"
    results = connection.exec(statement)
    results.map { |entry| entry['title'] }
  end

end

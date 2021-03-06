class SdbverFinder
    attr_reader :version

    def initialize(version)
        @version = version
    end

    def call
      query =
        <<-SQL
          SELECT
            MAX(Ver_ID) AS 'Version',
            MIN(Date) AS 'Date',
            SONO
          FROM
            v_version_DBver
          WHERE
            Ver_ID = '#{version}'
          GROUP BY SONO
          ORDER BY
            SONO
        SQL

    SelectVersionDbver.find_by_sql(query)
  end
end

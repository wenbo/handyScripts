# A query to get shareholders at a given time.
# Get shareholders whose max(sequence) company_shares total_quantity is not 0 at that time.
# sum_total_quantity is the sum of the total_quantity for each type of stock, and is used to sort the number of shares.

  scope :xxx, -> company_id, tran_on_date {
    joins("inner join
      (
        select stockholder_id, sum(total_quantity) sum_total_quantity
        from
          (
            select
              company_shares.stockholder_id,
              company_shares.share_type_id,
              company_shares.sequence,
              company_shares.total_quantity
            from
              company_shares
              inner join (
                SELECT
                  stockholder_id,
                  max(sequence) max_sequence,
                  share_type_id
                FROM
                  company_shares
                where
                  company_id = #{company_id} and company_shares.tran_on <= #{ActiveRecord::Base.connection.quote(tran_on_date)} and company_shares.type = 'Company::Share::Stock'
                group by
                  stockholder_id,
                  share_type_id
              ) grouped1 on company_shares.stockholder_id = grouped1.stockholder_id
              and company_shares.share_type_id = grouped1.share_type_id
              and company_shares.sequence = grouped1.max_sequence
          ) as grouped2
        group by grouped2.stockholder_id
      ) as grouped3 on stakeholders.id = grouped3.stockholder_id
      ")
      .where('grouped3.sum_total_quantity > 0')
      .where(stocks_count: 1..Float::INFINITY, is_simulation: false)
  }
